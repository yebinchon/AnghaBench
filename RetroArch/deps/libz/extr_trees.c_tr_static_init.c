
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ush ;
typedef void* uch ;
typedef int ct_data ;
struct TYPE_10__ {int extra_bits; } ;
struct TYPE_9__ {int* extra_bits; TYPE_3__* static_tree; } ;
struct TYPE_8__ {int Len; int Code; } ;
struct TYPE_7__ {int* extra_bits; TYPE_1__* static_tree; } ;
struct TYPE_6__ {int Len; } ;


 int Assert (int,char*) ;
 int D_CODES ;
 int LENGTH_CODES ;
 scalar_t__ L_CODES ;
 int MAX_BITS ;
 void** _dist_code ;
 void** _length_code ;
 int* base_dist ;
 int* base_length ;
 int bi_reverse (unsigned int,int) ;
 int extra_blbits ;
 int* extra_dbits ;
 int* extra_lbits ;
 int gen_codes (int *,scalar_t__,scalar_t__*) ;
 int gen_trees_header () ;
 TYPE_5__ static_bl_desc ;
 TYPE_4__ static_d_desc ;
 TYPE_3__* static_dtree ;
 TYPE_2__ static_l_desc ;
 TYPE_1__* static_ltree ;

__attribute__((used)) static void tr_static_init(void)
{

   static int static_init_done = 0;
   int n;
   int bits;
   int length;
   int codes;
   int dist;
   ush bl_count[MAX_BITS+1];


   if (static_init_done) return;
   length = 0;
   for (codes = 0; codes < LENGTH_CODES-1; codes++) {
      base_length[codes] = length;
      for (n = 0; n < (1<<extra_lbits[codes]); n++) {
         _length_code[length++] = (uch)codes;
      }
   }
   Assert (length == 256, "tr_static_init: length != 256");




   _length_code[length-1] = (uch)codes;


   dist = 0;
   for (codes = 0 ; codes < 16; codes++) {
      base_dist[codes] = dist;
      for (n = 0; n < (1<<extra_dbits[codes]); n++) {
         _dist_code[dist++] = (uch)codes;
      }
   }
   Assert (dist == 256, "tr_static_init: dist != 256");
   dist >>= 7;
   for ( ; codes < D_CODES; codes++) {
      base_dist[codes] = dist << 7;
      for (n = 0; n < (1<<(extra_dbits[codes]-7)); n++) {
         _dist_code[256 + dist++] = (uch)codes;
      }
   }
   Assert (dist == 256, "tr_static_init: 256+dist != 512");


   for (bits = 0; bits <= MAX_BITS; bits++) bl_count[bits] = 0;
   n = 0;
   while (n <= 143) static_ltree[n++].Len = 8, bl_count[8]++;
   while (n <= 255) static_ltree[n++].Len = 9, bl_count[9]++;
   while (n <= 279) static_ltree[n++].Len = 7, bl_count[7]++;
   while (n <= 287) static_ltree[n++].Len = 8, bl_count[8]++;




   gen_codes((ct_data *)static_ltree, L_CODES+1, bl_count);


   for (n = 0; n < D_CODES; n++) {
      static_dtree[n].Len = 5;
      static_dtree[n].Code = bi_reverse((unsigned)n, 5);
   }
   static_init_done = 1;





}
