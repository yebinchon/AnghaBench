
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int strip_opname(const char *str,char *name)



{
   int pos;

   pos = 0;

   while((str[pos] != 32) && (str[pos] != 0))
   {
      name[pos] = str[pos];
      pos++;
   }

   name[pos] = 0;

   return pos;
}
