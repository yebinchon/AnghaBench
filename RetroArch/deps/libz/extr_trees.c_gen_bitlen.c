
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* ush ;
typedef int ulg ;
struct TYPE_8__ {int max_code; TYPE_1__* stat_desc; TYPE_4__* dyn_tree; } ;
typedef TYPE_2__ tree_desc ;
typedef int intf ;
struct TYPE_9__ {int* bl_count; size_t* heap; size_t heap_max; int opt_len; int static_len; } ;
typedef TYPE_3__ deflate_state ;
struct TYPE_10__ {int Len; size_t Dad; void* Freq; } ;
typedef TYPE_4__ ct_data ;
struct TYPE_7__ {int* extra_bits; int extra_base; int max_length; TYPE_4__* static_tree; } ;


 int HEAP_SIZE ;
 int MAX_BITS ;
 int Trace (int ) ;
 int stderr ;

__attribute__((used)) static void gen_bitlen(deflate_state *s, tree_desc *desc)
{
   ct_data *tree = desc->dyn_tree;
   int max_code = desc->max_code;
   const ct_data *stree = desc->stat_desc->static_tree;
   const intf *extra = desc->stat_desc->extra_bits;
   int base = desc->stat_desc->extra_base;
   int max_length = desc->stat_desc->max_length;
   int h;
   int n, m;
   int bits;
   int xbits;
   ush f;
   int overflow = 0;

   for (bits = 0; bits <= MAX_BITS; bits++) s->bl_count[bits] = 0;




   tree[s->heap[s->heap_max]].Len = 0;

   for (h = s->heap_max+1; h < HEAP_SIZE; h++) {
      n = s->heap[h];
      bits = tree[tree[n].Dad].Len + 1;
      if (bits > max_length) bits = max_length, overflow++;
      tree[n].Len = (ush)bits;


      if (n > max_code) continue;

      s->bl_count[bits]++;
      xbits = 0;
      if (n >= base) xbits = extra[n-base];
      f = tree[n].Freq;
      s->opt_len += (ulg)f * (bits + xbits);
      if (stree) s->static_len += (ulg)f * (stree[n].Len + xbits);
   }
   if (overflow == 0) return;

   Trace((stderr,"\nbit length overflow\n"));



   do {
      bits = max_length-1;
      while (s->bl_count[bits] == 0) bits--;
      s->bl_count[bits]--;
      s->bl_count[bits+1] += 2;
      s->bl_count[max_length]--;



      overflow -= 2;
   } while (overflow > 0);






   for (bits = max_length; bits != 0; bits--) {
      n = s->bl_count[bits];
      while (n != 0) {
         m = s->heap[--h];
         if (m > max_code) continue;
         if ((unsigned) tree[m].Len != (unsigned) bits) {
            Trace((stderr,"code %d bits %d->%d\n", m, tree[m].Len, bits));
            s->opt_len += ((long)bits - (long)tree[m].Len)
               *(long)tree[m].Freq;
            tree[m].Len = (ush)bits;
         }
         n--;
      }
   }
}
