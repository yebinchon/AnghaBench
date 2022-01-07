
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



 int FDT_ERR_BADSTRUCTURE ;
 int FDT_ERR_NOTFOUND ;
 int FDT_NOP ;

 int fdt_next_tag (void const*,int,int*) ;

__attribute__((used)) static int _nextprop(const void *fdt, int offset)
{
 uint32_t tag;
 int nextoffset;

 do {
  tag = fdt_next_tag(fdt, offset, &nextoffset);

  switch (tag) {
  case 129:
   if (nextoffset >= 0)
    return -FDT_ERR_BADSTRUCTURE;
   else
    return nextoffset;

  case 128:
   return offset;
  }
  offset = nextoffset;
 } while (tag == FDT_NOP);

 return -FDT_ERR_NOTFOUND;
}
