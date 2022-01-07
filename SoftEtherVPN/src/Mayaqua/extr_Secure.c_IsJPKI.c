
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool IsJPKI(bool id)
{
 if (id == 9 || id == 13)
 {
  return 1;
 }

 return 0;
}
