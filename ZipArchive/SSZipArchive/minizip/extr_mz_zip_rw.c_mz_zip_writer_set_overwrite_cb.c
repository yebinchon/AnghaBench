
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mz_zip_writer_overwrite_cb ;
struct TYPE_2__ {void* overwrite_userdata; int overwrite_cb; } ;
typedef TYPE_1__ mz_zip_writer ;



void mz_zip_writer_set_overwrite_cb(void *handle, void *userdata, mz_zip_writer_overwrite_cb cb)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    writer->overwrite_cb = cb;
    writer->overwrite_userdata = userdata;
}
