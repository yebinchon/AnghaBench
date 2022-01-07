
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WK_word ;



__attribute__((used)) static WK_word*
WK_pack_4bits(WK_word* source_buf,
       WK_word* source_end,
       WK_word* dest_buf) {
   WK_word* src_next = source_buf;
   WK_word* dest_next = dest_buf;


   while (src_next < source_end) {
     WK_word temp = src_next[0];
     temp |= (src_next[1] << 4);

     dest_next[0] = temp;
     dest_next++;
     src_next += 2;
   }

   return dest_next;

}
