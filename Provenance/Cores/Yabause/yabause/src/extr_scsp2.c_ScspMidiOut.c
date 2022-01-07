
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int midi_out_cnt; int mofull; int * midi_out_buf; scalar_t__ moemp; } ;


 TYPE_1__ scsp ;

__attribute__((used)) static void ScspMidiOut(u8 data)
{
   scsp.moemp = 0;
   if (scsp.midi_out_cnt < 4)
      scsp.midi_out_buf[scsp.midi_out_cnt++] = data;
   scsp.mofull = (scsp.midi_out_cnt >= 4);
}
