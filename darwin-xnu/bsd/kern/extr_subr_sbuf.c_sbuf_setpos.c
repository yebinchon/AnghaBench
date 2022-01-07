
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int s_size; int s_len; } ;


 int KASSERT (int,char*) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;

int
sbuf_setpos(struct sbuf *s, int pos)
{
 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);

 KASSERT(pos >= 0,
     ("attempt to seek to a negative position (%d)", pos));
 KASSERT(pos < s->s_size,
     ("attempt to seek past end of sbuf (%d >= %d)", pos, s->s_size));

 if (pos < 0 || pos > s->s_len)
  return (-1);
 s->s_len = pos;
 return (0);
}
