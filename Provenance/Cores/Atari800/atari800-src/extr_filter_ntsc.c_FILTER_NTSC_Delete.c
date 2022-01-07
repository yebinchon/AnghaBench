
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atari_ntsc_t ;


 int free (int *) ;

void FILTER_NTSC_Delete(atari_ntsc_t *filter)
{
 free(filter);
}
