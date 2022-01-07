
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_x509_crt ;


 int * global_cacert ;

mbedtls_x509_crt *esp_mbedtls_get_global_ca_store(void)
{
    return global_cacert;
}
