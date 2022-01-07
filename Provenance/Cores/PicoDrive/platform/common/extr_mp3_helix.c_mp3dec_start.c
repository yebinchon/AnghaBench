
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MP3FreeDecoder (scalar_t__) ;
 scalar_t__ MP3InitDecoder () ;
 scalar_t__ mp3dec ;

int mp3dec_start(FILE *f, int fpos_start)
{

 if (mp3dec)
  MP3FreeDecoder(mp3dec);
 mp3dec = MP3InitDecoder();

 return (mp3dec == 0) ? -1 : 0;
}
