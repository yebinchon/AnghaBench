
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int compress_level; } ;
typedef TYPE_1__ mz_zip_writer ;
typedef int int16_t ;



void mz_zip_writer_set_compress_level(void *handle, int16_t compress_level)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    writer->compress_level = compress_level;
}
