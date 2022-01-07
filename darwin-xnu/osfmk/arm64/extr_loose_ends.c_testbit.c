
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_SIZE ;

int
testbit(int bitno, int *s)
{
 return s[bitno / INT_SIZE] & (1 << (bitno % INT_SIZE));
}
