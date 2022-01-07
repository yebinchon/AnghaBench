
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int* s_buf; int s_len; } ;


 scalar_t__ SBUF_HASOVERFLOWED (struct sbuf*) ;
 int SBUF_HASROOM (struct sbuf*) ;
 int SBUF_OVERFLOWED ;
 int SBUF_SETFLAG (struct sbuf*,int ) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;
 scalar_t__ sbuf_extend (struct sbuf*,int) ;

int
sbuf_putc(struct sbuf *s, int c)
{
 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);

 if (SBUF_HASOVERFLOWED(s))
  return (-1);

 if (!SBUF_HASROOM(s) && sbuf_extend(s, 1) < 0) {
  SBUF_SETFLAG(s, SBUF_OVERFLOWED);
  return (-1);
 }
 if (c != '\0')
     s->s_buf[s->s_len++] = c;
 return (0);
}
