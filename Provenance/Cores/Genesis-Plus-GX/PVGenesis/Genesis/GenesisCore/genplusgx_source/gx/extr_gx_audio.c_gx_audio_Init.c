
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int FILE ;


 int ASND_Init () ;
 scalar_t__ Bg_music_ogg ;
 int Bg_music_ogg_size ;
 char* DEFAULT_PATH ;
 int MAXPATHLEN ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (scalar_t__,int,int ,int *) ;
 scalar_t__ memalign (int,int ) ;
 int sprintf (char*,char*,char*) ;
 int stat (char*,struct stat*) ;

void gx_audio_Init(void)
{



  ASND_Init();


  char fname[MAXPATHLEN];
  sprintf(fname,"%s/Bg_music.ogg",DEFAULT_PATH);
  FILE *f = fopen(fname,"rb");
  if (f)
  {
    struct stat filestat;
    stat(fname, &filestat);
    Bg_music_ogg_size = filestat.st_size;
    Bg_music_ogg = memalign(32,Bg_music_ogg_size);
    if (Bg_music_ogg)
    {
      fread(Bg_music_ogg,1,Bg_music_ogg_size,f);
    }
    fclose(f);
  }
}
