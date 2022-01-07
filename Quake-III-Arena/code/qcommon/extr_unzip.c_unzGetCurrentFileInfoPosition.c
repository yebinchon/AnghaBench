
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pos_in_central_dir; } ;
typedef TYPE_1__ unz_s ;
typedef int * unzFile ;


 int UNZ_OK ;
 int UNZ_PARAMERROR ;

extern int unzGetCurrentFileInfoPosition (unzFile file, unsigned long *pos )
{
 unz_s* s;

 if (file==((void*)0))
  return UNZ_PARAMERROR;
 s=(unz_s*)file;

 *pos = s->pos_in_central_dir;
 return UNZ_OK;
}
