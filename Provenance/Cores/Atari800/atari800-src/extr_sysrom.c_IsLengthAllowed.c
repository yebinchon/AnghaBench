
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int IsLengthAllowed(int len)
{
 return len == 0x2800 || len == 0x4000 || len == 0x0800 || len == 0x2000;
}
