
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int BUFFER_FLAG_END_OF_STREAM; } ;
typedef TYPE_1__ FFAMediaCodec ;



int ff_AMediaCodec_getBufferFlagEndOfStream(FFAMediaCodec *codec)
{
    return codec->BUFFER_FLAG_END_OF_STREAM;
}
