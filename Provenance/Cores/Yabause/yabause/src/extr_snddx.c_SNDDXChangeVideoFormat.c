
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int NUMSOUNDBLOCKS ;
 int free (int *) ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;
 int soundbufsize ;
 int soundlen ;
 int * stereodata16 ;

int SNDDXChangeVideoFormat(int vertfreq)
{
   soundlen = 44100 / vertfreq;
   soundbufsize = soundlen * NUMSOUNDBLOCKS * 2 * 2;

   if (stereodata16)
      free(stereodata16);

   if ((stereodata16 = (u16 *)malloc(soundbufsize)) == ((void*)0))
      return -1;

   memset(stereodata16, 0, soundbufsize);
   return 0;
}
