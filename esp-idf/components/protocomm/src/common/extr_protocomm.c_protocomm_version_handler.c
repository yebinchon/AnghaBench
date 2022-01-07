
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ssize_t ;
struct TYPE_2__ {int ver; } ;
typedef TYPE_1__ protocomm_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int * malloc (int ) ;
 int memcpy (int *,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int protocomm_version_handler(uint32_t session_id,
                                     const uint8_t *inbuf, ssize_t inlen,
                                     uint8_t **outbuf, ssize_t *outlen,
                                     void *priv_data)
{
    protocomm_t *pc = (protocomm_t *) priv_data;
    if (!pc->ver) {
        *outlen = 0;
        *outbuf = ((void*)0);
        return ESP_OK;
    }


    *outlen = strlen(pc->ver);
    *outbuf = malloc(*outlen);
    if (outbuf == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to allocate memory for version response");
        return ESP_ERR_NO_MEM;
    }

    memcpy(*outbuf, pc->ver, *outlen);
    return ESP_OK;
}
