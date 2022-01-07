
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blufi_security {struct blufi_security* iv; int aes; int dhm; } ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 struct blufi_security* blufi_sec ;
 scalar_t__ malloc (int) ;
 int mbedtls_aes_init (int *) ;
 int mbedtls_dhm_init (int *) ;
 int memset (struct blufi_security*,int,int) ;

esp_err_t blufi_security_init(void)
{
    blufi_sec = (struct blufi_security *)malloc(sizeof(struct blufi_security));
    if (blufi_sec == ((void*)0)) {
        return ESP_FAIL;
    }

    memset(blufi_sec, 0x0, sizeof(struct blufi_security));

    mbedtls_dhm_init(&blufi_sec->dhm);
    mbedtls_aes_init(&blufi_sec->aes);

    memset(blufi_sec->iv, 0x0, 16);
    return 0;
}
