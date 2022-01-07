
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * blocksize; int previous_blocksize; scalar_t__ valid_extradata; } ;
typedef TYPE_1__ AVVorbisParseContext ;



void av_vorbis_parse_reset(AVVorbisParseContext *s)
{
    if (s->valid_extradata)
        s->previous_blocksize = s->blocksize[0];
}
