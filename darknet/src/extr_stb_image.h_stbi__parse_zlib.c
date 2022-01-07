
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int z_distance; int z_length; scalar_t__ code_buffer; scalar_t__ num_bits; } ;
typedef TYPE_1__ stbi__zbuf ;


 int stbi__compute_huffman_codes (TYPE_1__*) ;
 int stbi__parse_huffman_block (TYPE_1__*) ;
 int stbi__parse_uncompressed_block (TYPE_1__*) ;
 int stbi__parse_zlib_header (TYPE_1__*) ;
 int stbi__zbuild_huffman (int *,int ,int) ;
 int stbi__zdefault_distance ;
 int stbi__zdefault_length ;
 int stbi__zreceive (TYPE_1__*,int) ;

__attribute__((used)) static int stbi__parse_zlib(stbi__zbuf *a, int parse_header)
{
   int final, type;
   if (parse_header)
      if (!stbi__parse_zlib_header(a)) return 0;
   a->num_bits = 0;
   a->code_buffer = 0;
   do {
      final = stbi__zreceive(a,1);
      type = stbi__zreceive(a,2);
      if (type == 0) {
         if (!stbi__parse_uncompressed_block(a)) return 0;
      } else if (type == 3) {
         return 0;
      } else {
         if (type == 1) {

            if (!stbi__zbuild_huffman(&a->z_length , stbi__zdefault_length , 288)) return 0;
            if (!stbi__zbuild_huffman(&a->z_distance, stbi__zdefault_distance, 32)) return 0;
         } else {
            if (!stbi__compute_huffman_codes(a)) return 0;
         }
         if (!stbi__parse_huffman_block(a)) return 0;
      }
   } while (!final);
   return 1;
}
