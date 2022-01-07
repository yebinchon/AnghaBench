
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ spec_end; int code_bits; scalar_t__ succ_high; int succ_low; TYPE_1__* img_comp; } ;
typedef TYPE_2__ rjpeg_jpeg ;
typedef int rjpeg_huffman ;
typedef int data ;
struct TYPE_8__ {int dc_pred; } ;


 int memset (short*,int ,int) ;
 int rjpeg_extend_receive (TYPE_2__*,int) ;
 int rjpeg_grow_buffer_unsafe (TYPE_2__*) ;
 scalar_t__ rjpeg_jpeg_get_bit (TYPE_2__*) ;
 int rjpeg_jpeg_huff_decode (TYPE_2__*,int *) ;

__attribute__((used)) static int rjpeg_jpeg_decode_block_prog_dc(
      rjpeg_jpeg *j,
      short data[64],
      rjpeg_huffman *hdc,
      int b)
{

   if (j->spec_end != 0)
      return 0;

   if (j->code_bits < 16)
      rjpeg_grow_buffer_unsafe(j);

   if (j->succ_high == 0)
   {
      int t;
      int dc;
      int diff = 0;


      memset(data,0,64*sizeof(data[0]));
      t = rjpeg_jpeg_huff_decode(j, hdc);
      if (t)
         diff = rjpeg_extend_receive(j, t);

      dc = j->img_comp[b].dc_pred + diff;
      j->img_comp[b].dc_pred = dc;
      data[0] = (short) (dc << j->succ_low);
   }
   else
   {

      if (rjpeg_jpeg_get_bit(j))
         data[0] += (short) (1 << j->succ_low);
   }
   return 1;
}
