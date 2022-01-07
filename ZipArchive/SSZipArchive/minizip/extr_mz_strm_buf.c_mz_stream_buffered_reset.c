
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ position; scalar_t__ writebuf_pos; scalar_t__ writebuf_len; scalar_t__ readbuf_pos; scalar_t__ readbuf_len; } ;
typedef TYPE_1__ mz_stream_buffered ;
typedef int int32_t ;


 int MZ_OK ;

__attribute__((used)) static int32_t mz_stream_buffered_reset(void *stream)
{
    mz_stream_buffered *buffered = (mz_stream_buffered *)stream;

    buffered->readbuf_len = 0;
    buffered->readbuf_pos = 0;
    buffered->writebuf_len = 0;
    buffered->writebuf_pos = 0;
    buffered->position = 0;

    return MZ_OK;
}
