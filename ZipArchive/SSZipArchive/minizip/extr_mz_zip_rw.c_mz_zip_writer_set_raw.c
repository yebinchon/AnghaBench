
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int raw; } ;
typedef TYPE_1__ mz_zip_writer ;



void mz_zip_writer_set_raw(void *handle, uint8_t raw)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    writer->raw = raw;
}
