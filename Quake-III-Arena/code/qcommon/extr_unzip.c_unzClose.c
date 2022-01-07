
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file; int * pfile_in_zip_read; } ;
typedef TYPE_1__ unz_s ;
typedef int * unzFile ;


 int TRYFREE (TYPE_1__*) ;
 int UNZ_OK ;
 int UNZ_PARAMERROR ;
 int fclose (int ) ;
 int unzCloseCurrentFile (int *) ;

extern int unzClose (unzFile file)
{
 unz_s* s;
 if (file==((void*)0))
  return UNZ_PARAMERROR;
 s=(unz_s*)file;

    if (s->pfile_in_zip_read!=((void*)0))
        unzCloseCurrentFile(file);

 fclose(s->file);
 TRYFREE(s);
 return UNZ_OK;
}
