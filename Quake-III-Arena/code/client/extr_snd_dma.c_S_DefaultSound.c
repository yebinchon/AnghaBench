
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int soundLength; TYPE_3__* soundData; } ;
typedef TYPE_1__ sfx_t ;
struct TYPE_5__ {int* sndChunk; int * next; } ;


 TYPE_3__* SND_malloc () ;

void S_DefaultSound( sfx_t *sfx ) {

 int i;

 sfx->soundLength = 512;
 sfx->soundData = SND_malloc();
 sfx->soundData->next = ((void*)0);


 for ( i = 0 ; i < sfx->soundLength ; i++ ) {
  sfx->soundData->sndChunk[i] = i;
 }
}
