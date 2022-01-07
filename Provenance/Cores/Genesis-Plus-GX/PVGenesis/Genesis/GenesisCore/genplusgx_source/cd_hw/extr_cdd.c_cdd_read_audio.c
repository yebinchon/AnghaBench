
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8 ;
typedef int int16 ;
struct TYPE_16__ {int* ram; } ;
struct TYPE_12__ {TYPE_3__* tracks; } ;
struct TYPE_15__ {int* audio; size_t index; int volume; TYPE_4__ toc; } ;
struct TYPE_14__ {scalar_t__ datasource; } ;
struct TYPE_13__ {TYPE_2__* regs; } ;
struct TYPE_11__ {scalar_t__ fd; TYPE_6__ vf; } ;
struct TYPE_9__ {int h; } ;
struct TYPE_10__ {int w; TYPE_1__ byte; } ;


 int * blip ;
 int blip_add_delta_fast (int ,int,int) ;
 unsigned int blip_clocks_needed (int ,unsigned int) ;
 int blip_end_frame (int ,unsigned int) ;
 TYPE_8__ cdc ;
 TYPE_7__ cdd ;
 int fread (int*,int,unsigned int,scalar_t__) ;
 int ov_read (TYPE_6__*,char*,unsigned int,int ) ;
 TYPE_5__ scd ;

void cdd_read_audio(unsigned int samples)
{

  int16 l = cdd.audio[0];
  int16 r = cdd.audio[1];


  samples = blip_clocks_needed(blip[0], samples);


  if (!scd.regs[0x36>>1].byte.h && cdd.toc.tracks[cdd.index].fd)
  {
    int i, mul, delta;


    int curVol = cdd.volume;


    int endVol = scd.regs[0x34>>1].w >> 4;
    {



      uint8 *ptr = cdc.ram;

      fread(cdc.ram, 1, samples * 4, cdd.toc.tracks[cdd.index].fd);


      for (i=0; i<samples; i++)
      {


        mul = (curVol & 0x7fc) ? (curVol & 0x7fc) : (curVol & 0x03);






        delta = (((int16)((ptr[0] + ptr[1]*256)) * mul) / 1024) - l;
        ptr += 2;

        l += delta;
        blip_add_delta_fast(blip[0], i, delta);






        delta = (((int16)((ptr[0] + ptr[1]*256)) * mul) / 1024) - r;
        ptr += 2;

        r += delta;
        blip_add_delta_fast(blip[1], i, delta);


        if (curVol < endVol)
        {

          curVol++;
        }
        else if (curVol > endVol)
        {

          curVol--;
        }
        else if (!curVol)
        {

          break;
        }
      }
    }


    cdd.volume = curVol;


    cdd.audio[0] = l;
    cdd.audio[1] = r;
  }
  else
  {

    if (l) blip_add_delta_fast(blip[0], 0, -l);
    if (r) blip_add_delta_fast(blip[1], 0, -r);


    cdd.audio[0] = 0;
    cdd.audio[1] = 0;
  }


  blip_end_frame(blip[0], samples);
  blip_end_frame(blip[1], samples);
}
