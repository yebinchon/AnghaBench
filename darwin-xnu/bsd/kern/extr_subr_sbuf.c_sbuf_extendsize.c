
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SBUF_MAXEXTENDINCR ;
 scalar_t__ SBUF_MAXEXTENDSIZE ;
 int SBUF_MINEXTENDSIZE ;

__attribute__((used)) static int
sbuf_extendsize(int size)
{
 int newsize;

 newsize = SBUF_MINEXTENDSIZE;
 while (newsize < size) {
  if (newsize < (int)SBUF_MAXEXTENDSIZE)
   newsize *= 2;
  else
   newsize += SBUF_MAXEXTENDINCR;
 }

 return (newsize);
}
