
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned char) ;

__attribute__((used)) static int extract_text(char *dest, const unsigned char *src, int len, int swab)
{
 char *p = dest;
 int i;

 if (swab) swab = 1;

 for (i = len - 1; i >= 0; i--)
 {
  if (src[i^swab] != ' ') break;
 }
 len = i + 1;

 for (i = 0; i < len; i++)
 {
  unsigned char s = src[i^swab];
  if (s >= 0x20 && s < 0x7f && s != '#' && s != '|' &&
   s != '[' && s != ']' && s != '\\')
  {
   *p++ = s;
  }
  else
  {
   sprintf(p, "\\%02x", s);
   p += 3;
  }
 }

 return p - dest;
}
