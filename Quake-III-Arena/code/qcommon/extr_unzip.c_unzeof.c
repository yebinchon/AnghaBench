
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* pfile_in_zip_read; } ;
typedef TYPE_1__ unz_s ;
typedef int * unzFile ;
struct TYPE_4__ {scalar_t__ rest_read_uncompressed; } ;
typedef TYPE_2__ file_in_zip_read_info_s ;


 int UNZ_PARAMERROR ;

extern int unzeof (unzFile file)
{
 unz_s* s;
 file_in_zip_read_info_s* pfile_in_zip_read_info;
 if (file==((void*)0))
  return UNZ_PARAMERROR;
 s=(unz_s*)file;
    pfile_in_zip_read_info=s->pfile_in_zip_read;

 if (pfile_in_zip_read_info==((void*)0))
  return UNZ_PARAMERROR;

 if (pfile_in_zip_read_info->rest_read_uncompressed == 0)
  return 1;
 else
  return 0;
}
