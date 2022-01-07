
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
struct TYPE_4__ {scalar_t__ buffer_len; int buffer; TYPE_1__ stream; } ;
typedef TYPE_2__ mz_stream_zlib ;
typedef int int32_t ;


 int MZ_OK ;
 int MZ_WRITE_ERROR ;
 scalar_t__ mz_stream_write (int ,int ,scalar_t__) ;

__attribute__((used)) static int32_t mz_stream_zlib_flush(void *stream)
{
    mz_stream_zlib *zlib = (mz_stream_zlib *)stream;
    if (mz_stream_write(zlib->stream.base, zlib->buffer, zlib->buffer_len) != zlib->buffer_len)
        return MZ_WRITE_ERROR;
    return MZ_OK;
}
