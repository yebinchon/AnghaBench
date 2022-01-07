
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int fifo_lastwrite ;
 unsigned int fifo_latency ;
 scalar_t__ fifo_write_cnt ;
 int status ;

__attribute__((used)) static void vdp_fifo_update(unsigned int cycles)
{
  if (fifo_write_cnt > 0)
  {

    int fifo_read = ((cycles - fifo_lastwrite) / fifo_latency);

    if (fifo_read > 0)
    {

      fifo_write_cnt -= fifo_read;


      status &= 0xFEFF;


      if (fifo_write_cnt <= 0)
      {

        status |= 0x200;
        fifo_write_cnt = 0;
      }


      fifo_lastwrite += (fifo_read * fifo_latency);
    }
  }
}
