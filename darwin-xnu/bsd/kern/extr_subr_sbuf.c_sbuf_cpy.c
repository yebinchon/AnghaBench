
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;
 int sbuf_cat (struct sbuf*,char const*) ;
 int sbuf_clear (struct sbuf*) ;

int
sbuf_cpy(struct sbuf *s, const char *str)
{
 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);

 sbuf_clear(s);
 return (sbuf_cat(s, str));
}
