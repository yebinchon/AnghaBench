
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int compress_method; } ;
typedef TYPE_1__ mz_zip_writer ;



void mz_zip_writer_set_compress_method(void *handle, uint16_t compress_method)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    writer->compress_method = compress_method;
}
