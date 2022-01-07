
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ unzFile ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int total_out; int handle; } ;
typedef TYPE_1__ mz_compat ;
typedef scalar_t__ int32_t ;


 scalar_t__ INT32_MAX ;
 scalar_t__ MZ_OK ;
 int UNZ_PARAMERROR ;
 scalar_t__ mz_zip_entry_read (int ,void*,scalar_t__) ;

int unzReadCurrentFile(unzFile file, void *buf, uint32_t len)
{
    mz_compat *compat = (mz_compat *)file;
    int32_t err = MZ_OK;
    if (compat == ((void*)0) || len >= INT32_MAX)
        return UNZ_PARAMERROR;
    err = mz_zip_entry_read(compat->handle, buf, (int32_t)len);
    if (err > 0)
        compat->total_out += (uint32_t)err;
    return err;
}
