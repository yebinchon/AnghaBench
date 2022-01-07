
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * global_cacert ;
 scalar_t__ global_cacert_pem_bytes ;

void esp_wolfssl_free_global_ca_store(void)
{
    if (global_cacert) {
        free(global_cacert);
        global_cacert = ((void*)0);
        global_cacert_pem_bytes = 0;
    }
}
