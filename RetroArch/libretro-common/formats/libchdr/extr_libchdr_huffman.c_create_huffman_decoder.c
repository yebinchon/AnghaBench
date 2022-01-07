
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_t {int dummy; } ;
struct huffman_decoder {int numcodes; int maxbits; scalar_t__ rleremaining; scalar_t__ prevdata; int * datahisto; struct node_t* huffnode; int * lookup; } ;
typedef int lookup_value ;


 scalar_t__ malloc (int) ;

struct huffman_decoder* create_huffman_decoder(int numcodes, int maxbits)
{
   struct huffman_decoder* decoder;

 if (maxbits > 24)
  return ((void*)0);

 decoder = (struct huffman_decoder*)malloc(sizeof(struct huffman_decoder));
 decoder->numcodes = numcodes;
 decoder->maxbits = maxbits;
 decoder->lookup = (lookup_value*)malloc(sizeof(lookup_value) * (1 << maxbits));
 decoder->huffnode = (struct node_t*)malloc(sizeof(struct node_t) * numcodes);
 decoder->datahisto = ((void*)0);
 decoder->prevdata = 0;
 decoder->rleremaining = 0;
 return decoder;
}
