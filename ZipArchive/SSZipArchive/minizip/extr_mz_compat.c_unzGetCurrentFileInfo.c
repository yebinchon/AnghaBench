
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size_filename; scalar_t__ size_file_extra; scalar_t__ size_file_comment; void* uncompressed_size; void* compressed_size; int external_fa; int internal_fa; scalar_t__ disk_num_start; int crc; int mz_dos_date; int compression_method; int flag; int version_needed; int version; } ;
typedef TYPE_1__ unz_file_info ;
typedef scalar_t__ unzFile ;
typedef void* uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_7__ {scalar_t__ filename_size; scalar_t__ extrafield_size; scalar_t__ comment_size; int * comment; int extrafield; int * filename; scalar_t__ uncompressed_size; scalar_t__ compressed_size; int external_fa; int internal_fa; scalar_t__ disk_number; int crc; int modified_date; int compression_method; int flag; int version_needed; int version_madeby; } ;
typedef TYPE_2__ mz_zip_file ;
struct TYPE_8__ {int handle; } ;
typedef TYPE_3__ mz_compat ;
typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 int UNZ_PARAMERROR ;
 int memcpy (char*,int *,scalar_t__) ;
 scalar_t__ mz_zip_entry_get_info (int ,TYPE_2__**) ;
 int mz_zip_time_t_to_dos_date (int ) ;

int unzGetCurrentFileInfo(unzFile file, unz_file_info *pfile_info, char *filename,
    uint16_t filename_size, void *extrafield, uint16_t extrafield_size, char *comment, uint16_t comment_size)
{
    mz_compat *compat = (mz_compat *)file;
    mz_zip_file *file_info = ((void*)0);
    uint16_t bytes_to_copy = 0;
    int32_t err = MZ_OK;

    if (compat == ((void*)0))
        return UNZ_PARAMERROR;

    err = mz_zip_entry_get_info(compat->handle, &file_info);

    if ((err == MZ_OK) && (pfile_info != ((void*)0)))
    {
        pfile_info->version = file_info->version_madeby;
        pfile_info->version_needed = file_info->version_needed;
        pfile_info->flag = file_info->flag;
        pfile_info->compression_method = file_info->compression_method;
        pfile_info->mz_dos_date = mz_zip_time_t_to_dos_date(file_info->modified_date);


        pfile_info->crc = file_info->crc;

        pfile_info->size_filename = file_info->filename_size;
        pfile_info->size_file_extra = file_info->extrafield_size;
        pfile_info->size_file_comment = file_info->comment_size;

        pfile_info->disk_num_start = (uint16_t)file_info->disk_number;
        pfile_info->internal_fa = file_info->internal_fa;
        pfile_info->external_fa = file_info->external_fa;

        pfile_info->compressed_size = (uint32_t)file_info->compressed_size;
        pfile_info->uncompressed_size = (uint32_t)file_info->uncompressed_size;

        if (filename_size > 0 && filename != ((void*)0) && file_info->filename != ((void*)0))
        {
            bytes_to_copy = filename_size;
            if (bytes_to_copy > file_info->filename_size)
                bytes_to_copy = file_info->filename_size;
            memcpy(filename, file_info->filename, bytes_to_copy);
            if (bytes_to_copy < filename_size)
                filename[bytes_to_copy] = 0;
        }
        if (extrafield_size > 0 && extrafield != ((void*)0))
        {
            bytes_to_copy = extrafield_size;
            if (bytes_to_copy > file_info->extrafield_size)
                bytes_to_copy = file_info->extrafield_size;
            memcpy(extrafield, file_info->extrafield, bytes_to_copy);
        }
        if (comment_size > 0 && comment != ((void*)0) && file_info->comment != ((void*)0))
        {
            bytes_to_copy = comment_size;
            if (bytes_to_copy > file_info->comment_size)
                bytes_to_copy = file_info->comment_size;
            memcpy(comment, file_info->comment, bytes_to_copy);
            if (bytes_to_copy < comment_size)
                comment[bytes_to_copy] = 0;
        }
    }
    return err;
}
