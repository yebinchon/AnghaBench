
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {unsigned int cycles; int status; short* ram; int* out; TYPE_3__* chan; scalar_t__ enabled; } ;
struct TYPE_9__ {char* cycles; } ;
struct TYPE_7__ {scalar_t__ w; } ;
struct TYPE_6__ {int w; } ;
struct TYPE_8__ {int addr; short env; int pan; TYPE_2__ fd; TYPE_1__ ls; } ;


 unsigned int PCM_SCYCLES_RATIO ;
 int * blip ;
 int blip_add_delta_fast (int ,int,int) ;
 int blip_end_frame (int ,unsigned int) ;
 int error (char*,int ,char*,unsigned int,unsigned int) ;
 TYPE_5__ pcm ;
 TYPE_4__ s68k ;
 int v_counter ;

void pcm_run(unsigned int length)
{




  if (pcm.enabled)
  {
    int i, j, l, r;


    for (i=0; i<length; i++)
    {

      l = r = 0;


      for (j=0; j<8; j++)
      {

        if (pcm.status & (1 << j))
        {

          short data = pcm.ram[(pcm.chan[j].addr >> 11) & 0xffff];


          if (data == 0xff)
          {

            pcm.chan[j].addr = pcm.chan[j].ls.w << 11;


            data = pcm.ram[pcm.chan[j].ls.w];
          }
          else
          {

            pcm.chan[j].addr += pcm.chan[j].fd.w;
          }


          if (data != 0xff)
          {

            if (data & 0x80)
            {

              data = data & 0x7f;
            }
            else
            {

              data = -(data & 0x7f);
            }


            l += ((data * pcm.chan[j].env * (pcm.chan[j].pan & 0x0F)) >> 5);
            r += ((data * pcm.chan[j].env * (pcm.chan[j].pan >> 4)) >> 5);
          }
        }
      }


      if (l < -32768) l = -32768;
      else if (l > 32767) l = 32767;
      if (r < -32768) r = -32768;
      else if (r > 32767) r = 32767;


      if (pcm.out[0] != l)
      {
        blip_add_delta_fast(blip[0], i, l-pcm.out[0]);
        pcm.out[0] = l;
      }


      if (pcm.out[1] != r)
      {
        blip_add_delta_fast(blip[1], i, r-pcm.out[1]);
        pcm.out[1] = r;
      }
    }
  }
  else
  {

    if (pcm.out[0])
    {
      blip_add_delta_fast(blip[0], 0, -pcm.out[0]);
      pcm.out[0] = 0;
    }


    if (pcm.out[1])
    {
      blip_add_delta_fast(blip[1], 0, -pcm.out[1]);
      pcm.out[1] = 0;
    }
  }


  blip_end_frame(blip[0], length);
  blip_end_frame(blip[1], length);


  pcm.cycles += length * PCM_SCYCLES_RATIO;
}
