
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* heap; int heap_len; int depth; } ;
typedef TYPE_1__ deflate_state ;
typedef int ct_data ;


 scalar_t__ smaller (int *,int,int,int ) ;

__attribute__((used)) static void pqdownheap(deflate_state *s, ct_data *tree, int k)
{
   int v = s->heap[k];
   int j = k << 1;
   while (j <= s->heap_len) {

      if (j < s->heap_len &&
            smaller(tree, s->heap[j+1], s->heap[j], s->depth)) {
         j++;
      }

      if (smaller(tree, v, s->heap[j], s->depth)) break;


      s->heap[k] = s->heap[j]; k = j;


      j <<= 1;
   }
   s->heap[k] = v;
}
