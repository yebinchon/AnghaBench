
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atari_ntsc_t ;


 scalar_t__ Util_malloc (int) ;

atari_ntsc_t *FILTER_NTSC_New(void)
{
 atari_ntsc_t *filter = (atari_ntsc_t*) Util_malloc(sizeof(atari_ntsc_t));
 return filter;
}
