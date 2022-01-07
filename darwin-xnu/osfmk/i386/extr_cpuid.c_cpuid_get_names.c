
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct table {int mask; int name; } ;


 int bcopy (int ,char*,size_t) ;
 size_t min (int ,size_t) ;
 int strlen (int ) ;

__attribute__((used)) static char *
cpuid_get_names(struct table *map, uint64_t bits, char *buf, unsigned buf_len)
{
 size_t len = 0;
 char *p = buf;
 int i;

 for (i = 0; map[i].mask != 0; i++) {
  if ((bits & map[i].mask) == 0)
   continue;
  if (len && ((size_t) (p - buf) < (buf_len - 1)))
   *p++ = ' ';
  len = min(strlen(map[i].name), (size_t)((buf_len-1)-(p-buf)));
  if (len == 0)
   break;
  bcopy(map[i].name, p, len);
  p += len;
 }
 *p = '\0';
 return buf;
}
