
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int cursize; int* data; int maxsize; } ;
typedef TYPE_1__ msg_t ;
struct TYPE_8__ {TYPE_4__* tree; TYPE_4__* lhead; int blocNode; TYPE_4__* nodeList; TYPE_4__** loc; TYPE_4__* ltail; } ;
typedef TYPE_2__ huff_t ;
typedef int byte ;
struct TYPE_9__ {size_t symbol; int * right; int left; int parent; int * prev; int next; scalar_t__ weight; } ;


 int Com_Memcpy (int*,int*,int) ;
 int Com_Memset (TYPE_2__*,int ,int) ;
 int Huff_Receive (TYPE_4__*,int*,int*) ;
 int Huff_addRef (TYPE_2__*,int) ;
 size_t NYT ;
 int bloc ;
 int get_bit (int*) ;

void Huff_Decompress(msg_t *mbuf, int offset) {
 int ch, cch, i, j, size;
 byte seq[65536];
 byte* buffer;
 huff_t huff;

 size = mbuf->cursize - offset;
 buffer = mbuf->data + offset;

 if ( size <= 0 ) {
  return;
 }

 Com_Memset(&huff, 0, sizeof(huff_t));

 huff.tree = huff.lhead = huff.ltail = huff.loc[NYT] = &(huff.nodeList[huff.blocNode++]);
 huff.tree->symbol = NYT;
 huff.tree->weight = 0;
 huff.lhead->next = huff.lhead->prev = ((void*)0);
 huff.tree->parent = huff.tree->left = huff.tree->right = ((void*)0);

 cch = buffer[0]*256 + buffer[1];

 if ( cch > mbuf->maxsize - offset ) {
  cch = mbuf->maxsize - offset;
 }
 bloc = 16;

 for ( j = 0; j < cch; j++ ) {
  ch = 0;


  if ( (bloc >> 3) > size ) {
   seq[j] = 0;
   break;
  }
  Huff_Receive(huff.tree, &ch, buffer);
  if ( ch == NYT ) {
   ch = 0;
   for ( i = 0; i < 8; i++ ) {
    ch = (ch<<1) + get_bit(buffer);
   }
  }

  seq[j] = ch;

  Huff_addRef(&huff, (byte)ch);
 }
 mbuf->cursize = cch + offset;
 Com_Memcpy(mbuf->data + offset, seq, cch);
}
