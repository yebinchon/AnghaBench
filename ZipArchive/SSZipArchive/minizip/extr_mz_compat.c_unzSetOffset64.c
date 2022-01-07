
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
struct TYPE_2__ {int handle; } ;
typedef TYPE_1__ mz_compat ;
typedef int int64_t ;


 int UNZ_PARAMERROR ;
 scalar_t__ mz_zip_goto_entry (int ,int ) ;

int unzSetOffset64(unzFile file, int64_t pos)
{
    mz_compat *compat = (mz_compat *)file;
    if (compat == ((void*)0))
        return UNZ_PARAMERROR;
    return (int)mz_zip_goto_entry(compat->handle, pos);
}
