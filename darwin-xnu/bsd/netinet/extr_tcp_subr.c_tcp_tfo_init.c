
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int key ;


 int TCP_FASTOPEN_KEYLEN ;
 int aes_encrypt_key128 (int *,int *) ;
 int read_frandom (int *,int) ;
 int tfo_ctx ;

__attribute__((used)) static void
tcp_tfo_init(void)
{
 u_char key[TCP_FASTOPEN_KEYLEN];

 read_frandom(key, sizeof(key));
 aes_encrypt_key128(key, &tfo_ctx);
}
