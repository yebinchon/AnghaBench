
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ TLS_PRE_MASTER_SECRET_LEN ;
 int TLS_VERSION ;
 int WPA_PUT_BE16 (int *,int ) ;
 scalar_t__ os_get_random (int *,scalar_t__) ;

int tls_derive_pre_master_secret(u8 *pre_master_secret)
{
 WPA_PUT_BE16(pre_master_secret, TLS_VERSION);
 if (os_get_random(pre_master_secret + 2,
     TLS_PRE_MASTER_SECRET_LEN - 2))
  return -1;
 return 0;
}
