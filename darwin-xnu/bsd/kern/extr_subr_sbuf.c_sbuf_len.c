
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int s_len; } ;


 scalar_t__ SBUF_HASOVERFLOWED (struct sbuf*) ;
 int assert_sbuf_integrity (struct sbuf*) ;

int
sbuf_len(struct sbuf *s)
{
 assert_sbuf_integrity(s);


 if (SBUF_HASOVERFLOWED(s))
  return (-1);
 return s->s_len;
}
