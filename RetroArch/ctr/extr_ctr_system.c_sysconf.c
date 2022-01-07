
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
long sysconf(int name)
{
   switch (name)
   {
      case 128:
         return 2;
   }

   return -1;
}
