
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mz_zip_reader_entry_cb ;
struct TYPE_2__ {void* entry_userdata; int entry_cb; } ;
typedef TYPE_1__ mz_zip_reader ;



void mz_zip_reader_set_entry_cb(void *handle, void *userdata, mz_zip_reader_entry_cb cb)
{
    mz_zip_reader *reader = (mz_zip_reader *)handle;
    reader->entry_cb = cb;
    reader->entry_userdata = userdata;
}
