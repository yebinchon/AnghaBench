
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_3__ {scalar_t__ INFO_OUTPUT_FORMAT_CHANGED; } ;
typedef TYPE_1__ FFAMediaCodec ;



int ff_AMediaCodec_infoOutputFormatChanged(FFAMediaCodec *codec, ssize_t idx)
{
    return idx == codec->INFO_OUTPUT_FORMAT_CHANGED;
}
