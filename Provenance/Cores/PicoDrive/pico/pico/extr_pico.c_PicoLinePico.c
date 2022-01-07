
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_counter; int r12; scalar_t__ fifo_bytes; int fifo_line_bytes; scalar_t__ fifo_bytes_prev; } ;


 int EL_PICOHW ;
 scalar_t__ PICOHW_FIFO_IRQ_THRESHOLD ;
 TYPE_1__ PicoPicohw ;
 int SekInterrupt (int) ;
 int elprintf (int ,char*,...) ;
 scalar_t__ fifo_bytes_line ;
 int prev_line_cnt_irq3 ;
 int prev_line_cnt_irq5 ;

__attribute__((used)) static void PicoLinePico(void)
{
  PicoPicohw.line_counter++;


  if ((PicoPicohw.r12 & 0x4003) && PicoPicohw.line_counter - prev_line_cnt_irq3 > 200) {
    prev_line_cnt_irq3 = PicoPicohw.line_counter;

    elprintf(EL_PICOHW, "irq3");
    SekInterrupt(3);
    return;
  }


  if (PicoPicohw.fifo_bytes > 0)
  {
    PicoPicohw.fifo_line_bytes += fifo_bytes_line;
    if (PicoPicohw.fifo_line_bytes >= (1<<16)) {
      PicoPicohw.fifo_bytes -= PicoPicohw.fifo_line_bytes >> 16;
      PicoPicohw.fifo_line_bytes &= 0xffff;
      if (PicoPicohw.fifo_bytes < 0)
        PicoPicohw.fifo_bytes = 0;
    }
  }
  else
    PicoPicohw.fifo_line_bytes = 0;


  if (PicoPicohw.fifo_bytes_prev >= PICOHW_FIFO_IRQ_THRESHOLD &&
      PicoPicohw.fifo_bytes < PICOHW_FIFO_IRQ_THRESHOLD) {
    prev_line_cnt_irq3 = PicoPicohw.line_counter;
    elprintf(EL_PICOHW, "irq3, fb=%i", PicoPicohw.fifo_bytes);
    SekInterrupt(3);
  }
  PicoPicohw.fifo_bytes_prev = PicoPicohw.fifo_bytes;
}
