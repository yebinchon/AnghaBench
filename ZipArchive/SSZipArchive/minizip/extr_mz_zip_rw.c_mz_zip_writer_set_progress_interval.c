
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int progress_cb_interval_ms; } ;
typedef TYPE_1__ mz_zip_writer ;



void mz_zip_writer_set_progress_interval(void *handle, uint32_t milliseconds)
{
    mz_zip_writer *writer = (mz_zip_writer *)handle;
    writer->progress_cb_interval_ms = milliseconds;
}
