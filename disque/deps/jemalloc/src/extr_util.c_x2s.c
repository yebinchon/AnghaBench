
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int memcpy (char*,char*,int) ;
 char* u2s (int ,int,int,char*,size_t*) ;

__attribute__((used)) static char *
x2s(uintmax_t x, bool alt_form, bool uppercase, char *s, size_t *slen_p)
{

 s = u2s(x, 16, uppercase, s, slen_p);
 if (alt_form) {
  s -= 2;
  (*slen_p) += 2;
  memcpy(s, uppercase ? "0X" : "0x", 2);
 }
 return (s);
}
