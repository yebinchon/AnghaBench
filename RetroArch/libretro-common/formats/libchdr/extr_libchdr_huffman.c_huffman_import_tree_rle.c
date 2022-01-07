
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct huffman_decoder {int maxbits; int numcodes; TYPE_1__* huffnode; } ;
struct bitstream {int dummy; } ;
typedef enum huffman_error { ____Placeholder_huffman_error } huffman_error ;
struct TYPE_2__ {int numbits; } ;


 int HUFFERR_INPUT_BUFFER_TOO_SMALL ;
 int HUFFERR_INVALID_DATA ;
 int HUFFERR_NONE ;
 scalar_t__ bitstream_overflow (struct bitstream*) ;
 int bitstream_read (struct bitstream*,int) ;
 int huffman_assign_canonical_codes (struct huffman_decoder*) ;
 int huffman_build_lookup_table (struct huffman_decoder*) ;

enum huffman_error huffman_import_tree_rle(struct huffman_decoder* decoder, struct bitstream* bitbuf)
{
   enum huffman_error error;

 int numbits;
 int curnode;
 if (decoder->maxbits >= 16)
  numbits = 5;
 else if (decoder->maxbits >= 8)
  numbits = 4;
 else
  numbits = 3;


 for (curnode = 0; curnode < decoder->numcodes; )
 {

  int nodebits = bitstream_read(bitbuf, numbits);
  if (nodebits != 1)
   decoder->huffnode[curnode++].numbits = nodebits;


  else
  {

   nodebits = bitstream_read(bitbuf, numbits);
   if (nodebits == 1)
    decoder->huffnode[curnode++].numbits = nodebits;


   else
   {
    int repcount = bitstream_read(bitbuf, numbits) + 3;
    while (repcount--)
     decoder->huffnode[curnode++].numbits = nodebits;
   }
  }
 }


 if (curnode != decoder->numcodes)
  return HUFFERR_INVALID_DATA;


 error = huffman_assign_canonical_codes(decoder);
 if (error != HUFFERR_NONE)
  return error;


 huffman_build_lookup_table(decoder);


 return bitstream_overflow(bitbuf) ? HUFFERR_INPUT_BUFFER_TOO_SMALL : HUFFERR_NONE;
}
