
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffer; scalar_t__ client_data; scalar_t__ read_callback; scalar_t__ consumed_bits; scalar_t__ consumed_words; scalar_t__ bytes; scalar_t__ words; scalar_t__ capacity; } ;
typedef TYPE_1__ FLAC__BitReader ;


 int FLAC__ASSERT (int) ;
 int free (scalar_t__) ;

void FLAC__bitreader_free(FLAC__BitReader *br)
{
 FLAC__ASSERT(0 != br);

 if(0 != br->buffer)
  free(br->buffer);
 br->buffer = 0;
 br->capacity = 0;
 br->words = br->bytes = 0;
 br->consumed_words = br->consumed_bits = 0;
 br->read_callback = 0;
 br->client_data = 0;
}
