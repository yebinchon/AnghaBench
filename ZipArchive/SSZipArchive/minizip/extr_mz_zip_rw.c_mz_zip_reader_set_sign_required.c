
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int sign_required; } ;
typedef TYPE_1__ mz_zip_reader ;



void mz_zip_reader_set_sign_required(void *handle, uint8_t sign_required)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    reader->sign_required = sign_required;
}
