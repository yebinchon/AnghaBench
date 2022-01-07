
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;


 int bcopy_no_overwrite (char const*,char*,int) ;

void
ovbcopy(
 const char *from,
 char *to,
 vm_size_t bytes)
{

 if (from + bytes <= to || to + bytes <= from || to == from)
  bcopy_no_overwrite(from, to, bytes);
 else if (from > to)
  bcopy_no_overwrite(from, to, bytes);
 else {

  from += bytes - 1;
  to += bytes - 1;
  while (bytes-- > 0)
   *to-- = *from--;
 }
}
