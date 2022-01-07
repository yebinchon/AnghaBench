
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pos_in_central_dir; int current_file_ok; int cur_file_info_internal; int cur_file_info; } ;
typedef TYPE_1__ unz_s ;
typedef int * unzFile ;


 int UNZ_OK ;
 int UNZ_PARAMERROR ;
 int unzlocal_GetCurrentFileInfoInternal (int *,int *,int *,int *,int ,int *,int ,int *,int ) ;

extern int unzSetCurrentFileInfoPosition (unzFile file, unsigned long pos )
{
 unz_s* s;
 int err;

 if (file==((void*)0))
  return UNZ_PARAMERROR;
 s=(unz_s*)file;

 s->pos_in_central_dir = pos;
 err = unzlocal_GetCurrentFileInfoInternal(file,&s->cur_file_info,
              &s->cur_file_info_internal,
              ((void*)0),0,((void*)0),0,((void*)0),0);
 s->current_file_ok = (err == UNZ_OK);
 return UNZ_OK;
}
