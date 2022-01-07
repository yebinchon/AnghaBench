
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILTER_NTSC_setup ;
 int atari_ntsc_composite ;

void FILTER_NTSC_PreInitialise(void)
{

 FILTER_NTSC_setup = atari_ntsc_composite;
}
