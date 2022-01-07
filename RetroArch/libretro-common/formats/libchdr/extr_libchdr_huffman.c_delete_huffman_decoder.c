
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct huffman_decoder {struct huffman_decoder* huffnode; struct huffman_decoder* lookup; } ;


 int free (struct huffman_decoder*) ;

void delete_huffman_decoder(struct huffman_decoder* decoder)
{
 if (decoder != ((void*)0))
 {
  if (decoder->lookup != ((void*)0))
   free(decoder->lookup);
  if (decoder->huffnode != ((void*)0))
   free(decoder->huffnode);
  free(decoder);
 }
}
