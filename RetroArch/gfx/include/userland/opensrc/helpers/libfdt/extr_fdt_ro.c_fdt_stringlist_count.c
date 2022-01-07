
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_BADVALUE ;
 char* fdt_getprop (void const*,int,char const*,int*) ;
 int strnlen (char const*,int) ;

int fdt_stringlist_count(const void *fdt, int nodeoffset, const char *property)
{
 const char *list, *end;
 int length, count = 0;

 list = fdt_getprop(fdt, nodeoffset, property, &length);
 if (!list)
  return -length;

 end = list + length;

 while (list < end) {
  length = strnlen(list, end - list) + 1;


  if (list + length > end)
   return -FDT_ERR_BADVALUE;

  list += length;
  count++;
 }

 return count;
}
