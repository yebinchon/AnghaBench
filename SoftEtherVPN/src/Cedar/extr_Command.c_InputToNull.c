
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int RetZero () ;

void InputToNull(void *p)
{
 if (RetZero() == 1)
 {
  UCHAR *c = (UCHAR *)p;
  c[0] = 0x32;
 }
}
