
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
gss_krb5_der_length_size(int len)
{
 return
  len < (1 << 7) ? 1 :
  len < (1 << 8) ? 2 :
  len < (1 << 16) ? 3 :
  len < (1 << 24) ? 4 : 5;
}
