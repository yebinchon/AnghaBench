
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct node_t {scalar_t__ count; int bits; int weight; int m_weight; int m_bits; int numbits; struct node_t* parent; } ;
struct huffman_decoder {int numcodes; scalar_t__* datahisto; struct node_t* huffnode; } ;
typedef int list ;


 int MAX (int,int) ;
 int fprintf (int ,char*,...) ;
 int free (struct node_t**) ;
 int huffman_tree_node_compare ;
 scalar_t__ malloc (int) ;
 int memmove (struct node_t**,struct node_t**,int) ;
 int memset (struct node_t*,int ,int) ;
 int qsort (struct node_t**,int,int,int ) ;
 int stderr ;

int huffman_build_tree(struct huffman_decoder* decoder, uint32_t totaldata, uint32_t totalweight)
{
   int nextalloc;
 int maxbits = 0;

 struct node_t** list = (struct node_t**)
      malloc(sizeof(struct node_t*) * decoder->numcodes * 2);
 int curcode, listitems = 0;

 memset(decoder->huffnode, 0,
         decoder->numcodes * sizeof(decoder->huffnode[0]));

 for (curcode = 0; curcode < decoder->numcodes; curcode++)
  if (decoder->datahisto[curcode] != 0)
  {
   list[listitems++] = &decoder->huffnode[curcode];
   decoder->huffnode[curcode].count = decoder->datahisto[curcode];
   decoder->huffnode[curcode].bits = curcode;


   decoder->huffnode[curcode].weight = ((uint64_t)decoder->datahisto[curcode]) * ((uint64_t)totalweight) / ((uint64_t)totaldata);
   if (decoder->huffnode[curcode].weight == 0)
    decoder->huffnode[curcode].weight = 1;
  }
 qsort(&list[0], listitems, sizeof(list[0]), huffman_tree_node_compare);
 nextalloc = decoder->numcodes;

 while (listitems > 1)
 {
  int curitem;

  struct node_t* node1 = &(*list[--listitems]);
  struct node_t* node0 = &(*list[--listitems]);


  struct node_t* newnode = &decoder->huffnode[nextalloc++];
  newnode->parent = ((void*)0);
  node0->parent =
         node1->parent = newnode;
  newnode->weight =
         node0->weight + node1->weight;


  for (curitem = 0; curitem < listitems; curitem++)
   if (newnode->weight > list[curitem]->weight)
   {
    memmove(&list[curitem+1],
                  &list[curitem],
                  (listitems - curitem) * sizeof(list[0]));
    break;
   }
  list[curitem] = newnode;
  listitems++;
 }



 for (curcode = 0; curcode < decoder->numcodes; curcode++)
 {
  struct node_t *curnode;
  struct node_t* node = &decoder->huffnode[curcode];
  node->numbits = 0;
  node->bits = 0;


  if (node->weight > 0)
  {

   for (curnode = node;
               curnode->parent != ((void*)0); curnode = curnode->parent)
    node->numbits++;
   if (node->numbits == 0)
    node->numbits = 1;


   maxbits = MAX(maxbits, ((int)node->numbits));
  }
 }
   free(list);
 return maxbits;
}
