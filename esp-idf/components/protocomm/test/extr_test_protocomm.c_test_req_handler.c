
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ ssize_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int * malloc (scalar_t__) ;
 int memcpy (int *,int const*,scalar_t__) ;
 int test_priv_data ;

esp_err_t test_req_handler (uint32_t session_id,
                            const uint8_t *inbuf, ssize_t inlen,
                            uint8_t **outbuf, ssize_t *outlen,
                            void *priv_data)
{
    *outbuf = malloc(inlen);
    if (*outbuf) {
        *outlen = inlen;
        memcpy(*outbuf, inbuf, inlen);
    } else {
        ESP_LOGE(TAG, "Error allocating response outbuf");
        *outbuf = ((void*)0);
        *outlen = 0;
    }

    uint32_t *priv = (uint32_t *) priv_data;
    if ((&test_priv_data != priv) || (test_priv_data != *priv)) {
        ESP_LOGE(TAG, "Handler private data doesn't match");
        return ESP_FAIL;
    }
    return ESP_OK;
}
