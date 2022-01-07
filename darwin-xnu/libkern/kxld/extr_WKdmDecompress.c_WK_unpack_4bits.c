
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WK_word ;


 int DEBUG_PRINT_2 (char*,int) ;
 int FOUR_BITS_PACKING_MASK ;

__attribute__((used)) static WK_word*
WK_unpack_4bits(WK_word *input_buf,
                WK_word *input_end,
                WK_word *output_buf) {

  WK_word *input_next = input_buf;
  WK_word *output_next = output_buf;
  WK_word packing_mask = FOUR_BITS_PACKING_MASK;






  while (input_next < input_end) {
    WK_word temp = input_next[0];
    DEBUG_PRINT_2("Unpacked dictionary indices word: %.8x\n", temp);
    output_next[0] = temp & packing_mask;
    output_next[1] = (temp >> 4) & packing_mask;

    output_next += 2;
    input_next++;
  }

  return output_next;

}
