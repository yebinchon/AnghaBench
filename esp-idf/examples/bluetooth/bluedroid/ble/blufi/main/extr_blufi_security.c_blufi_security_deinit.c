
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct blufi_security {int dummy; } ;
struct TYPE_4__ {int aes; int dhm; struct TYPE_4__* dh_param; } ;


 TYPE_1__* blufi_sec ;
 int free (TYPE_1__*) ;
 int mbedtls_aes_free (int *) ;
 int mbedtls_dhm_free (int *) ;
 int memset (TYPE_1__*,int,int) ;

void blufi_security_deinit(void)
{
    if (blufi_sec == ((void*)0)) {
        return;
    }
    if (blufi_sec->dh_param){
        free(blufi_sec->dh_param);
        blufi_sec->dh_param = ((void*)0);
    }
    mbedtls_dhm_free(&blufi_sec->dhm);
    mbedtls_aes_free(&blufi_sec->aes);

    memset(blufi_sec, 0x0, sizeof(struct blufi_security));

    free(blufi_sec);
    blufi_sec = ((void*)0);
}
