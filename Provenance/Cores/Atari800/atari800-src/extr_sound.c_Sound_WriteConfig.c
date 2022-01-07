
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int freq; int sample_size; int frag_frames; } ;
typedef int FILE ;


 TYPE_1__ Sound_desired ;
 int Sound_enabled ;
 int Sound_latency ;
 int fprintf (int *,char*,int) ;

void Sound_WriteConfig(FILE *fp)
{
 fprintf(fp, "SOUND_ENABLED=%u\n", Sound_enabled);
 fprintf(fp, "SOUND_RATE=%u\n", Sound_desired.freq);
 fprintf(fp, "SOUND_BITS=%u\n", Sound_desired.sample_size * 8);
 fprintf(fp, "SOUND_FRAG_FRAMES=%u\n", Sound_desired.frag_frames);



}
