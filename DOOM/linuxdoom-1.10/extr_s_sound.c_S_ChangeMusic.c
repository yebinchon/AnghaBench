
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int handle; void* data; scalar_t__ lumpnum; } ;
typedef TYPE_1__ musicinfo_t ;


 int I_Error (char*,int) ;
 int I_PlaySong (int ,int) ;
 int I_RegisterSong (void*) ;
 int NUMMUSIC ;
 int PU_MUSIC ;
 int S_StopMusic () ;
 TYPE_1__* S_music ;
 scalar_t__ W_CacheLumpNum (scalar_t__,int ) ;
 scalar_t__ W_GetNumForName (char*) ;
 int mus_None ;
 TYPE_1__* mus_playing ;
 int sprintf (char*,char*,char*) ;

void
S_ChangeMusic
( int musicnum,
  int looping )
{
    musicinfo_t* music;
    char namebuf[9];

    if ( (musicnum <= mus_None)
  || (musicnum >= NUMMUSIC) )
    {
 I_Error("Bad music number %d", musicnum);
    }
    else
 music = &S_music[musicnum];

    if (mus_playing == music)
 return;


    S_StopMusic();


    if (!music->lumpnum)
    {
 sprintf(namebuf, "d_%s", music->name);
 music->lumpnum = W_GetNumForName(namebuf);
    }


    music->data = (void *) W_CacheLumpNum(music->lumpnum, PU_MUSIC);
    music->handle = I_RegisterSong(music->data);


    I_PlaySong(music->handle, looping);

    mus_playing = music;
}
