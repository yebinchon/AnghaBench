
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int s_len; int * s_buf; } ;


 scalar_t__ SBUF_HASOVERFLOWED (struct sbuf*) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;
 scalar_t__ isspace (int ) ;

int
sbuf_trim(struct sbuf *s)
{
 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);

 if (SBUF_HASOVERFLOWED(s))
  return (-1);

 while (s->s_len && isspace(s->s_buf[s->s_len-1]))
  --s->s_len;

 return (0);
}
