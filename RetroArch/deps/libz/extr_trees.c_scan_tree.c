
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ush ;
struct TYPE_7__ {TYPE_1__* bl_tree; } ;
typedef TYPE_2__ deflate_state ;
struct TYPE_8__ {int Len; } ;
typedef TYPE_3__ ct_data ;
struct TYPE_6__ {scalar_t__ Freq; } ;


 size_t REPZ_11_138 ;
 size_t REPZ_3_10 ;
 size_t REP_3_6 ;

__attribute__((used)) static void scan_tree (deflate_state *s, ct_data *tree, int max_code)
{
   int n;
   int prevlen = -1;
   int curlen;
   int nextlen = tree[0].Len;
   int count = 0;
   int max_count = 7;
   int min_count = 4;

   if (nextlen == 0) max_count = 138, min_count = 3;
   tree[max_code+1].Len = (ush)0xffff;

   for (n = 0; n <= max_code; n++) {
      curlen = nextlen; nextlen = tree[n+1].Len;
      if (++count < max_count && curlen == nextlen) {
         continue;
      } else if (count < min_count) {
         s->bl_tree[curlen].Freq += count;
      } else if (curlen != 0) {
         if (curlen != prevlen) s->bl_tree[curlen].Freq++;
         s->bl_tree[REP_3_6].Freq++;
      } else if (count <= 10) {
         s->bl_tree[REPZ_3_10].Freq++;
      } else {
         s->bl_tree[REPZ_11_138].Freq++;
      }
      count = 0; prevlen = curlen;
      if (nextlen == 0) {
         max_count = 138, min_count = 3;
      } else if (curlen == nextlen) {
         max_count = 6, min_count = 3;
      } else {
         max_count = 7, min_count = 4;
      }
   }
}
