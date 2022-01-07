
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {char a; char b; char c; char d; char e; char f; char g; char h; } ;
typedef TYPE_1__ pasc_t ;


 int MAX (int ,int) ;
 int bcopy (char*,char*,int ) ;

void
unpackA(char *inbuf, uint32_t length)
{
 pasc_t packs;
 unsigned i = 0;
 length = (length * 8)/7;

 while (i < length) {
   packs = *(pasc_t *)&inbuf[i];
   bcopy(&inbuf[i+7], &inbuf[i+8], MAX(0, (int) (length - i - 8)));
   inbuf[i++] = packs.a;
   inbuf[i++] = packs.b;
   inbuf[i++] = packs.c;
   inbuf[i++] = packs.d;
   inbuf[i++] = packs.e;
   inbuf[i++] = packs.f;
   inbuf[i++] = packs.g;
   inbuf[i++] = packs.h;
 }
}
