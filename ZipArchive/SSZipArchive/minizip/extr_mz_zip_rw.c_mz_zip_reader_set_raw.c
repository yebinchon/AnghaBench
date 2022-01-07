
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int raw; } ;
typedef TYPE_1__ mz_zip_reader ;



void mz_zip_reader_set_raw(void *handle, uint8_t raw)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    reader->raw = raw;
}
