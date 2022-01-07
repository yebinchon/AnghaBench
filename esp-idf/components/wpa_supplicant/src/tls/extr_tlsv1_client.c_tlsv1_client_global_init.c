
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_global_init () ;

int tlsv1_client_global_init(void)
{
 return crypto_global_init();
}
