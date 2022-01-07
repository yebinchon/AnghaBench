
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md5_context ;
typedef int buf ;
typedef int FILE ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,...) ;
 int MD5_MAX_LEN ;
 int TAG ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (void*,int,int,int *) ;
 int mbedtls_md5_finish_ret (int *,unsigned char*) ;
 int mbedtls_md5_init (int *) ;
 int mbedtls_md5_starts_ret (int *) ;
 int mbedtls_md5_update_ret (int *,unsigned char const*,size_t) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static void compute_alice_txt_md5(void)
{
    ESP_LOGI(TAG, "Computing alice.txt MD5 hash");


    FILE* f = fopen("/spiffs/sub/alice.txt", "r");
    if (f == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to open alice.txt");
        return;
    }




    char buf[64];
    mbedtls_md5_context ctx;
    unsigned char digest[16];

    mbedtls_md5_init(&ctx);
    mbedtls_md5_starts_ret(&ctx);

    size_t read;

    do {
        read = fread((void*) buf, 1, sizeof(buf), f);
        mbedtls_md5_update_ret(&ctx, (unsigned const char*) buf, read);
    } while(read == sizeof(buf));

    mbedtls_md5_finish_ret(&ctx, digest);


    char digest_str[16 * 2];

    for (int i = 0; i < 16; i++) {
        sprintf(&digest_str[i * 2], "%02x", (unsigned int)digest[i]);
    }


    ESP_LOGI(TAG, "Computed MD5 hash of alice.txt: %s", digest_str);

    fclose(f);
}
