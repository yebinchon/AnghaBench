
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ilcs_common; } ;
typedef TYPE_1__ ILCS_SERVICE_T ;
typedef int ILCS_COMMON_T ;



ILCS_COMMON_T *ilcs_get_common(ILCS_SERVICE_T *st)
{
   return st->ilcs_common;
}
