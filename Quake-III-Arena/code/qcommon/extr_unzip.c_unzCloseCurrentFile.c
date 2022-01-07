
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pfile_in_zip_read; } ;
typedef TYPE_1__ unz_s ;
typedef int * unzFile ;
struct TYPE_5__ {scalar_t__ stream_initialised; int stream; struct TYPE_5__* read_buffer; } ;
typedef TYPE_2__ file_in_zip_read_info_s ;


 int TRYFREE (TYPE_2__*) ;
 int UNZ_OK ;
 int UNZ_PARAMERROR ;
 int inflateEnd (int *) ;

extern int unzCloseCurrentFile (unzFile file)
{
 int err=UNZ_OK;

 unz_s* s;
 file_in_zip_read_info_s* pfile_in_zip_read_info;
 if (file==((void*)0))
  return UNZ_PARAMERROR;
 s=(unz_s*)file;
    pfile_in_zip_read_info=s->pfile_in_zip_read;

 if (pfile_in_zip_read_info==((void*)0))
  return UNZ_PARAMERROR;
 TRYFREE(pfile_in_zip_read_info->read_buffer);
 pfile_in_zip_read_info->read_buffer = ((void*)0);
 if (pfile_in_zip_read_info->stream_initialised)
  inflateEnd(&pfile_in_zip_read_info->stream);

 pfile_in_zip_read_info->stream_initialised = 0;
 TRYFREE(pfile_in_zip_read_info);

    s->pfile_in_zip_read=((void*)0);

 return err;
}
