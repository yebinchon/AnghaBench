
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDT_ERR_BADVALUE ;
 int FDT_ERR_NOTFOUND ;
 char* fdt_getprop (void const*,int,char const*,int*) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;
 int strnlen (char const*,int) ;

int fdt_stringlist_search(const void *fdt, int nodeoffset, const char *property,
     const char *string)
{
 int length, len, idx = 0;
 const char *list, *end;

 list = fdt_getprop(fdt, nodeoffset, property, &length);
 if (!list)
  return -length;

 len = strlen(string) + 1;
 end = list + length;

 while (list < end) {
  length = strnlen(list, end - list) + 1;


  if (list + length > end)
   return -FDT_ERR_BADVALUE;

  if (length == len && memcmp(list, string, length) == 0)
   return idx;

  list += length;
  idx++;
 }

 return -FDT_ERR_NOTFOUND;
}
