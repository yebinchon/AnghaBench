
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int s_size; char* s_buf; } ;


 int SBFREE (char*) ;
 scalar_t__ SBMALLOC (int) ;
 int SBUF_CANEXTEND (struct sbuf*) ;
 int SBUF_DYNAMIC ;
 scalar_t__ SBUF_ISDYNAMIC (struct sbuf*) ;
 int SBUF_SETFLAG (struct sbuf*,int ) ;
 int bcopy (char*,char*,int) ;
 int sbuf_extendsize (int) ;

__attribute__((used)) static int
sbuf_extend(struct sbuf *s, int addlen)
{
 char *newbuf;
 int newsize;

 if (!SBUF_CANEXTEND(s))
  return (-1);

 newsize = sbuf_extendsize(s->s_size + addlen);
 newbuf = (char *)SBMALLOC(newsize);
 if (newbuf == ((void*)0))
  return (-1);
 bcopy(s->s_buf, newbuf, s->s_size);
 if (SBUF_ISDYNAMIC(s))
  SBFREE(s->s_buf);
 else
  SBUF_SETFLAG(s, SBUF_DYNAMIC);
 s->s_buf = newbuf;
 s->s_size = newsize;
 return (0);
}
