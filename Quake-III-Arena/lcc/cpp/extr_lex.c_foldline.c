
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* inp; char* inl; } ;
typedef TYPE_1__ Source ;


 scalar_t__ EOF ;
 scalar_t__ fillbuf (TYPE_1__*) ;
 int memmove (char*,char*,int) ;

int
foldline(Source *s)
{
 while (s->inp+1 >= s->inl && fillbuf(s)!=EOF)
  ;
 if (s->inp[1] == '\n') {
  memmove(s->inp, s->inp+2, s->inl-s->inp+3);
  s->inl -= 2;
  return 1;
 }
 return 0;
}
