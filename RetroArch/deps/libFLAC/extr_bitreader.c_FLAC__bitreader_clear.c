
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ consumed_bits; scalar_t__ consumed_words; scalar_t__ bytes; scalar_t__ words; } ;
typedef int FLAC__bool ;
typedef TYPE_1__ FLAC__BitReader ;



FLAC__bool FLAC__bitreader_clear(FLAC__BitReader *br)
{
 br->words = br->bytes = 0;
 br->consumed_words = br->consumed_bits = 0;
 return 1;
}
