
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cp_key_os_version_t ;



__attribute__((used)) static cp_key_os_version_t
parse_os_version(const char *vers)
{
 const char *p = vers;

 int a = 0;
 while (*p >= '0' && *p <= '9') {
  a = a * 10 + *p - '0';
  ++p;
 }

 if (!a)
  return 0;

 int b = *p++;
 if (!b)
  return 0;

 int c = 0;
 while (*p >= '0' && *p <= '9') {
  c = c * 10 + *p - '0';
  ++p;
 }

 if (!c)
  return 0;

 return (a & 0xff) << 24 | b << 16 | (c & 0xffff);
}
