
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {char* s_buf; } ;


 int SBUF_FINISHED ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;

char *
sbuf_data(struct sbuf *s)
{
 assert_sbuf_integrity(s);
 assert_sbuf_state(s, SBUF_FINISHED);

 return s->s_buf;
}
