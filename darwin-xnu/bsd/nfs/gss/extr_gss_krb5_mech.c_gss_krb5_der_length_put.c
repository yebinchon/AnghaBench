
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;


 int gss_krb5_der_length_size (int) ;

__attribute__((used)) static void
gss_krb5_der_length_put(uint8_t **pp, int len)
{
 int sz = gss_krb5_der_length_size(len);
 uint8_t *p = *pp;

 if (sz == 1) {
  *p++ = (uint8_t) len;
 } else {
  *p++ = (uint8_t) ((sz-1) | 0x80);
  sz -= 1;
  while (sz--)
   *p++ = (uint8_t) ((len >> (sz * 8)) & 0xff);
 }

 *pp = p;
}
