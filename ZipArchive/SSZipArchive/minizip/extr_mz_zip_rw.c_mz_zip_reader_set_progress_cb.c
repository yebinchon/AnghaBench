
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mz_zip_reader_progress_cb ;
struct TYPE_2__ {void* progress_userdata; int progress_cb; } ;
typedef TYPE_1__ mz_zip_reader ;



void mz_zip_reader_set_progress_cb(void *handle, void *userdata, mz_zip_reader_progress_cb cb)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    reader->progress_cb = cb;
    reader->progress_userdata = userdata;
}
