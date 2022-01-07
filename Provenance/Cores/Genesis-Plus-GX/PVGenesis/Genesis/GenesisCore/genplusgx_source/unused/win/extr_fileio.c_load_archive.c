
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uncompressed_size; } ;
typedef TYPE_1__ unz_file_info ;
typedef int unzFile ;
typedef int uint8 ;
typedef int gzFile ;


 int UNZ_OK ;
 scalar_t__ check_zip (char*) ;
 int free (int *) ;
 int gzclose (int *) ;
 int * gzopen (char*,char*) ;
 int gzread (int *,int *,int) ;
 int gzsize (int *) ;
 int * malloc (int) ;
 int unzClose (int *) ;
 int unzCloseCurrentFile (int *) ;
 int unzGetCurrentFileInfo (int *,TYPE_1__*,char*,int,int *,int ,int *,int ) ;
 int unzGoToFirstFile (int *) ;
 int * unzOpen (char*) ;
 int unzOpenCurrentFile (int *) ;
 int unzReadCurrentFile (int *,int *,int) ;

uint8 *load_archive(char *filename, int *file_size)
{
    int size = 0;
    uint8 *buf = ((void*)0);

    if(check_zip(filename))
    {
        unzFile *fd = ((void*)0);
        unz_file_info info;
        int ret = 0;


        fd = unzOpen(filename);
        if(!fd) return (((void*)0));


        ret = unzGoToFirstFile(fd);
        if(ret != UNZ_OK)
        {
            unzClose(fd);
            return (((void*)0));
        }

        ret = unzGetCurrentFileInfo(fd, &info, filename, 128, ((void*)0), 0, ((void*)0), 0);
        if(ret != UNZ_OK)
        {
            unzClose(fd);
            return (((void*)0));
        }


        ret = unzOpenCurrentFile(fd);
        if(ret != UNZ_OK)
        {
            unzClose(fd);
            return (((void*)0));
        }


        size = info.uncompressed_size;
        buf = malloc(size);
        if(!buf)
        {
            unzClose(fd);
            return (((void*)0));
        }


        ret = unzReadCurrentFile(fd, buf, info.uncompressed_size);
        if(ret != info.uncompressed_size)
        {
            free(buf);
            unzCloseCurrentFile(fd);
            unzClose(fd);
            return (((void*)0));
        }


        ret = unzCloseCurrentFile(fd);
        if(ret != UNZ_OK)
        {
            free(buf);
            unzClose(fd);
            return (((void*)0));
        }


        ret = unzClose(fd);
        if(ret != UNZ_OK)
        {
            free(buf);
            return (((void*)0));
        }


        *file_size = size;
        return (buf);
    }
    else
    {
        gzFile *gd = ((void*)0);


        gd = gzopen(filename, "rb");
        if(!gd) return (0);


        size = gzsize(gd);


        buf = malloc(size);
        if(!buf)
        {
            gzclose(gd);
            return (0);
        }


        gzread(gd, buf, size);


        gzclose(gd);


        *file_size = size;
        return (buf);
    }
}
