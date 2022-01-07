
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_const_bytep ;
typedef int png_alloc_size_t ;
struct TYPE_3__ {scalar_t__ output_len; int input_len; int input; } ;
typedef TYPE_1__ compression_state ;



__attribute__((used)) static void
png_text_compress_init(compression_state *comp, png_const_bytep input,
    png_alloc_size_t input_len)
{
   comp->input = input;
   comp->input_len = input_len;
   comp->output_len = 0;
}
