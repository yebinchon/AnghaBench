
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ stream; } ;
typedef TYPE_2__ mz_stream_split ;
typedef int int32_t ;


 int mz_stream_error (int ) ;

int32_t mz_stream_split_error(void *stream)
{
    mz_stream_split *split = (mz_stream_split *)stream;
    return mz_stream_error(split->stream.base);
}
