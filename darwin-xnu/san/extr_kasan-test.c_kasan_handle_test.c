
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _longjmp (int ,int) ;
 scalar_t__ in_test ;
 int jbuf ;

void
kasan_handle_test(void)
{
 if (in_test) {
  _longjmp(jbuf, 1);

 }
}
