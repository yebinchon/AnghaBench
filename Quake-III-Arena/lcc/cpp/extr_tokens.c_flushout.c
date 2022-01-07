
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ wbp ;
 scalar_t__ wbuf ;
 int write (int,scalar_t__,scalar_t__) ;

void
flushout(void)
{
 if (wbp>wbuf) {
  write(1, wbuf, wbp-wbuf);
  wbp = wbuf;
 }
}
