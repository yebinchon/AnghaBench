
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pathwfs ;
struct TYPE_5__ {scalar_t__ (* overwrite_cb ) (void*,int ,TYPE_2__*,char*) ;TYPE_2__* file_info; int zip_handle; int overwrite_userdata; int entry_userdata; int (* entry_cb ) (void*,int ,TYPE_2__*,char*) ;} ;
typedef TYPE_1__ mz_zip_reader ;
typedef scalar_t__ int32_t ;
typedef int directory ;
struct TYPE_6__ {int external_fa; int version_madeby; int creation_date; int accessed_date; int modified_date; int linkname; } ;


 int MZ_HOST_SYSTEM (int ) ;
 scalar_t__ MZ_OK ;
 int MZ_OPEN_MODE_CREATE ;
 scalar_t__ MZ_PARAM_ERROR ;
 int MZ_PATH_SLASH_UNIX ;
 int MZ_VERSION_MADEBY_HOST_SYSTEM ;
 scalar_t__ mz_dir_make (char*) ;
 scalar_t__ mz_os_file_exists (char*) ;
 scalar_t__ mz_os_is_dir (char*) ;
 int mz_os_make_symlink (char*,int ) ;
 int mz_os_set_file_attribs (char*,int ) ;
 int mz_os_set_file_date (char*,int ,int ,int ) ;
 int mz_os_unlink (char*) ;
 int mz_path_convert_slashes (char*,int ) ;
 int mz_path_remove_filename (char*) ;
 int mz_path_remove_slash (char*) ;
 int mz_stream_close (void*) ;
 int mz_stream_delete (void**) ;
 int mz_stream_os_create (void**) ;
 scalar_t__ mz_stream_os_open (void*,char*,int ) ;
 int mz_stream_write ;
 scalar_t__ mz_zip_attrib_convert (int ,int ,int ,int *) ;
 scalar_t__ mz_zip_entry_is_dir (int ) ;
 scalar_t__ mz_zip_entry_is_symlink (int ) ;
 scalar_t__ mz_zip_reader_entry_save (void*,void*,int ) ;
 scalar_t__ mz_zip_reader_is_open (TYPE_1__*) ;
 int strncpy (char*,char const*,int) ;
 int stub1 (void*,int ,TYPE_2__*,char*) ;
 scalar_t__ stub2 (void*,int ,TYPE_2__*,char*) ;

int32_t mz_zip_reader_entry_save_file(void *handle, const char *path)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    void *stream = ((void*)0);
    uint32_t target_attrib = 0;
    int32_t err_attrib = 0;
    int32_t err = MZ_OK;
    int32_t err_cb = MZ_OK;
    char pathwfs[512];
    char directory[512];

    if (mz_zip_reader_is_open(reader) != MZ_OK)
        return MZ_PARAM_ERROR;
    if (reader->file_info == ((void*)0) || path == ((void*)0))
        return MZ_PARAM_ERROR;


    strncpy(pathwfs, path, sizeof(pathwfs) - 1);
    pathwfs[sizeof(pathwfs) - 1] = 0;
    mz_path_convert_slashes(pathwfs, MZ_PATH_SLASH_UNIX);

    if (reader->entry_cb != ((void*)0))
        reader->entry_cb(handle, reader->entry_userdata, reader->file_info, pathwfs);

    strncpy(directory, pathwfs, sizeof(directory) - 1);
    directory[sizeof(directory) - 1] = 0;
    mz_path_remove_filename(directory);


    if ((mz_zip_entry_is_dir(reader->zip_handle) == MZ_OK) &&
        (mz_zip_entry_is_symlink(reader->zip_handle) != MZ_OK))
    {
        err = mz_dir_make(directory);
        return err;
    }


    if ((mz_os_file_exists(pathwfs) == MZ_OK) && (reader->overwrite_cb != ((void*)0)))
    {
        err_cb = reader->overwrite_cb(handle, reader->overwrite_userdata, reader->file_info, pathwfs);
        if (err_cb != MZ_OK)
            return err;

        mz_os_unlink(pathwfs);
    }


    if (mz_zip_entry_is_symlink(reader->zip_handle) == MZ_OK)
    {
        mz_path_remove_slash(pathwfs);
        mz_path_remove_filename(directory);
    }


    if (mz_os_is_dir(directory) != MZ_OK)
    {
        err = mz_dir_make(directory);
        if (err != MZ_OK)
            return err;
    }


    if (mz_zip_entry_is_symlink(reader->zip_handle) == MZ_OK)
    {
        mz_os_make_symlink(pathwfs, reader->file_info->linkname);

        return err;
    }


    mz_stream_os_create(&stream);
    err = mz_stream_os_open(stream, pathwfs, MZ_OPEN_MODE_CREATE);

    if (err == MZ_OK)
        err = mz_zip_reader_entry_save(handle, stream, mz_stream_write);

    mz_stream_close(stream);
    mz_stream_delete(&stream);

    if (err == MZ_OK)
    {

        mz_os_set_file_date(pathwfs, reader->file_info->modified_date,
            reader->file_info->accessed_date, reader->file_info->creation_date);
    }

    if (err == MZ_OK)
    {

        err_attrib = mz_zip_attrib_convert(MZ_HOST_SYSTEM(reader->file_info->version_madeby),
            reader->file_info->external_fa, MZ_VERSION_MADEBY_HOST_SYSTEM, &target_attrib);

        if (err_attrib == MZ_OK)
            mz_os_set_file_attribs(pathwfs, target_attrib);
    }

    return err;
}
