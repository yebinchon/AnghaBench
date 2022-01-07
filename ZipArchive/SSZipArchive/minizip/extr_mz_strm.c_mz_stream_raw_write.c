
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
struct TYPE_4__ {int total_in; int total_out; TYPE_1__ stream; } ;
typedef TYPE_2__ mz_stream_raw ;
typedef scalar_t__ int32_t ;


 scalar_t__ mz_stream_write (int ,void const*,scalar_t__) ;

int32_t mz_stream_raw_write(void *stream, const void *buf, int32_t size)
{
    mz_stream_raw *raw = (mz_stream_raw *)stream;
    int32_t written = 0;

    written = mz_stream_write(raw->stream.base, buf, size);

    if (written > 0)
    {
        raw->total_out += written;
        raw->total_in += written;
    }

    return written;
}
