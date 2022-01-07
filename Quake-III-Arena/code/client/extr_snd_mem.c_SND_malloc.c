
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next; } ;
typedef TYPE_1__ sndBuffer ;


 int S_FreeOldestSound () ;
 TYPE_1__* freelist ;
 int inUse ;
 int totalInUse ;

sndBuffer* SND_malloc() {
 sndBuffer *v;
redo:
 if (freelist == ((void*)0)) {
  S_FreeOldestSound();
  goto redo;
 }

 inUse -= sizeof(sndBuffer);
 totalInUse += sizeof(sndBuffer);

 v = freelist;
 freelist = *(sndBuffer **)freelist;
 v->next = ((void*)0);
 return v;
}
