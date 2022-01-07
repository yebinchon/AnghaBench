
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int consumed_bits; } ;
typedef TYPE_1__ FLAC__BitReader ;



unsigned FLAC__bitreader_bits_left_for_byte_alignment(const FLAC__BitReader *br)
{
 return 8 - (br->consumed_bits & 7);
}
