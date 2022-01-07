
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encoding; } ;
typedef TYPE_1__ mz_zip_reader ;
typedef int int32_t ;



void mz_zip_reader_set_encoding(void *handle, int32_t encoding)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    reader->encoding = encoding;
}
