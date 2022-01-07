
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gi; } ;
typedef TYPE_1__ unz_s ;
typedef int unz_global_info ;
typedef int * unzFile ;


 int UNZ_OK ;
 int UNZ_PARAMERROR ;

extern int unzGetGlobalInfo (unzFile file,unz_global_info *pglobal_info)
{
 unz_s* s;
 if (file==((void*)0))
  return UNZ_PARAMERROR;
 s=(unz_s*)file;
 *pglobal_info=s->gi;
 return UNZ_OK;
}
