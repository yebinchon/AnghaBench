
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int ff_rescale_rms(unsigned int rms, unsigned int energy)
{
    return (rms * energy) >> 10;
}
