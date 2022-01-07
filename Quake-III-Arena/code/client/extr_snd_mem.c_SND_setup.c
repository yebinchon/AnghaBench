
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sndBuffer ;
struct TYPE_3__ {int integer; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int Com_Printf (char*) ;
 TYPE_1__* Cvar_Get (char*,int ,int) ;
 int DEF_COMSOUNDMEGS ;
 int SND_CHUNK_SIZE ;
 int * buffer ;
 int * freelist ;
 int inUse ;
 void* malloc (int) ;
 void* sfxScratchBuffer ;
 int * sfxScratchPointer ;

void SND_setup() {
 sndBuffer *p, *q;
 cvar_t *cv;
 int scs;

 cv = Cvar_Get( "com_soundMegs", DEF_COMSOUNDMEGS, CVAR_LATCH | CVAR_ARCHIVE );

 scs = (cv->integer*1536);

 buffer = malloc(scs*sizeof(sndBuffer) );

 sfxScratchBuffer = malloc(SND_CHUNK_SIZE * sizeof(short) * 4);
 sfxScratchPointer = ((void*)0);

 inUse = scs*sizeof(sndBuffer);
 p = buffer;;
 q = p + scs;
 while (--q > p)
  *(sndBuffer **)q = q-1;

 *(sndBuffer **)q = ((void*)0);
 freelist = p + scs - 1;

 Com_Printf("Sound memory manager started\n");
}
