
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct data_mbuf {int outlen; int * outbuf; } ;
typedef int ssize_t ;


 int ESP_ERR_NOT_FOUND ;
 int ESP_LOGE (int ,char*,int ) ;
 int ESP_OK ;
 int TAG ;
 struct data_mbuf* find_attr_with_handle (int ) ;

__attribute__((used)) static int simple_ble_gatts_get_attr_value(uint16_t attr_handle, ssize_t
        *outlen, uint8_t **outbuf)
{
    struct data_mbuf *attr_mbuf = find_attr_with_handle(attr_handle);
    if (!attr_mbuf) {
        ESP_LOGE(TAG, "Outbuf with handle %d not found", attr_handle);
        return ESP_ERR_NOT_FOUND;
    }
    *outbuf = attr_mbuf->outbuf;
    *outlen = attr_mbuf->outlen;
    return ESP_OK;
}
