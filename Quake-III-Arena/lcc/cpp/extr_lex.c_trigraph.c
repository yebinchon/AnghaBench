
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* inp; char* inl; } ;
typedef TYPE_1__ Source ;


 scalar_t__ EOF ;
 scalar_t__ fillbuf (TYPE_1__*) ;
 int memmove (int*,int*,int) ;

int
trigraph(Source *s)
{
 int c;

 while (s->inp+2 >= s->inl && fillbuf(s)!=EOF)
  ;
 if (s->inp[1]!='?')
  return 0;
 c = 0;
 switch(s->inp[2]) {
 case '=':
  c = '#'; break;
 case '(':
  c = '['; break;
 case '/':
  c = '\\'; break;
 case ')':
  c = ']'; break;
 case '\'':
  c = '^'; break;
 case '<':
  c = '{'; break;
 case '!':
  c = '|'; break;
 case '>':
  c = '}'; break;
 case '-':
  c = '~'; break;
 }
 if (c) {
  *s->inp = c;
  memmove(s->inp+1, s->inp+3, s->inl-s->inp+2);
  s->inl -= 2;
 }
 return c;
}
