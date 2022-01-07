
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sndBuffer ;


 int * freelist ;
 int inUse ;

void SND_free(sndBuffer *v) {
 *(sndBuffer **)v = freelist;
 freelist = (sndBuffer*)v;
 inUse += sizeof(sndBuffer);
}
