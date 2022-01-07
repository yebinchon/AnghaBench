
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int words; int consumed_words; int bytes; int consumed_bits; } ;
typedef TYPE_1__ FLAC__BitReader ;


 int FLAC__BITS_PER_WORD ;

unsigned FLAC__bitreader_get_input_bits_unconsumed(const FLAC__BitReader *br)
{
 return (br->words-br->consumed_words)*FLAC__BITS_PER_WORD + br->bytes*8 - br->consumed_bits;
}
