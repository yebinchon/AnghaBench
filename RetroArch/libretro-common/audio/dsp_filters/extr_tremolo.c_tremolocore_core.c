
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tremolo_core {int index; int maxindex; float* wavetable; } ;



float tremolocore_core(struct tremolo_core *core,float in)
{
      core->index = core->index % core->maxindex;
      return in * core->wavetable[core->index++];
}
