
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {scalar_t__ s_len; } ;


 int SBUF_CLEARFLAG (struct sbuf*,int ) ;
 int SBUF_FINISHED ;
 int SBUF_OVERFLOWED ;
 int assert_sbuf_integrity (struct sbuf*) ;

void
sbuf_clear(struct sbuf *s)
{
 assert_sbuf_integrity(s);


 SBUF_CLEARFLAG(s, SBUF_FINISHED);
 SBUF_CLEARFLAG(s, SBUF_OVERFLOWED);
 s->s_len = 0;
}
