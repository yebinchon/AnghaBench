
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int s_len; int * s_buf; } ;


 scalar_t__ SBUF_HASOVERFLOWED (struct sbuf*) ;
 int SBUF_HASROOM (struct sbuf*) ;
 int SBUF_OVERFLOWED ;
 int SBUF_SETFLAG (struct sbuf*,int ) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;
 scalar_t__ sbuf_extend (struct sbuf*,int ) ;
 int strlen (char const*) ;

int
sbuf_cat(struct sbuf *s, const char *str)
{
 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);

 if (SBUF_HASOVERFLOWED(s))
  return (-1);

 while (*str) {
  if (!SBUF_HASROOM(s) && sbuf_extend(s, strlen(str)) < 0)
   break;
  s->s_buf[s->s_len++] = *str++;
 }
 if (*str) {
  SBUF_SETFLAG(s, SBUF_OVERFLOWED);
  return (-1);
 }
 return (0);
}
