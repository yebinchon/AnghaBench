
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
struct TYPE_2__ {int total_out; } ;
typedef TYPE_1__ mz_compat ;
typedef int int64_t ;


 int UNZ_PARAMERROR ;

int64_t unztell(unzFile file)
{
    mz_compat *compat = (mz_compat *)file;
    if (compat == ((void*)0))
        return UNZ_PARAMERROR;
    return (int64_t)compat->total_out;
}
