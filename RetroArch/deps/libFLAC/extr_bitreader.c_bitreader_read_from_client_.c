
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int consumed_words; int words; size_t bytes; unsigned int capacity; void** buffer; int client_data; int (* read_callback ) (int *,size_t*,int ) ;} ;
typedef int FLAC__byte ;
typedef int FLAC__bool ;
typedef TYPE_1__ FLAC__BitReader ;


 unsigned int FLAC__BYTES_PER_WORD ;
 void* SWAP_BE_WORD_TO_HOST (void*) ;
 int memmove (void**,void**,unsigned int) ;
 int stub1 (int *,size_t*,int ) ;

__attribute__((used)) static FLAC__bool bitreader_read_from_client_(FLAC__BitReader *br)
{
 unsigned start, end;
 size_t bytes;
 FLAC__byte *target;


 if(br->consumed_words > 0) {
  start = br->consumed_words;
  end = br->words + (br->bytes? 1:0);
  memmove(br->buffer, br->buffer+start, FLAC__BYTES_PER_WORD * (end - start));

  br->words -= start;
  br->consumed_words = 0;
 }




 bytes = (br->capacity - br->words) * FLAC__BYTES_PER_WORD - br->bytes;
 if(bytes == 0)
  return 0;
 target = ((FLAC__byte*)(br->buffer+br->words)) + br->bytes;
 if(br->bytes)
  br->buffer[br->words] = SWAP_BE_WORD_TO_HOST(br->buffer[br->words]);
 if(!br->read_callback(target, &bytes, br->client_data))
  return 0;
 end = (br->words*FLAC__BYTES_PER_WORD + br->bytes + (unsigned)bytes + (FLAC__BYTES_PER_WORD-1)) / FLAC__BYTES_PER_WORD;
 for(start = br->words; start < end; start++)
  br->buffer[start] = SWAP_BE_WORD_TO_HOST(br->buffer[start]);
 end = br->words*FLAC__BYTES_PER_WORD + br->bytes + (unsigned)bytes;
 br->words = end / FLAC__BYTES_PER_WORD;
 br->bytes = end % FLAC__BYTES_PER_WORD;

 return 1;
}
