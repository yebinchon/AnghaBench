
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {char* s_buf; size_t s_len; } ;


 int SBUF_CLEARFLAG (struct sbuf*,int ) ;
 int SBUF_FINISHED ;
 int SBUF_OVERFLOWED ;
 int SBUF_SETFLAG (struct sbuf*,int ) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;

void
sbuf_finish(struct sbuf *s)
{
 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);

 s->s_buf[s->s_len] = '\0';
 SBUF_CLEARFLAG(s, SBUF_OVERFLOWED);
 SBUF_SETFLAG(s, SBUF_FINISHED);
}
