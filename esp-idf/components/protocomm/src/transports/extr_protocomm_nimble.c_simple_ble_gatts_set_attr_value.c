
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct data_mbuf {int outlen; int * outbuf; int attr_handle; } ;
typedef int ssize_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int SLIST_INSERT_HEAD (int *,struct data_mbuf*,int ) ;
 int TAG ;
 struct data_mbuf* calloc (int,int) ;
 int data_mbuf_list ;
 struct data_mbuf* find_attr_with_handle (int ) ;
 int free (int *) ;
 int node ;

__attribute__((used)) static int simple_ble_gatts_set_attr_value(uint16_t attr_handle, ssize_t outlen,
        uint8_t *outbuf)
{
    struct data_mbuf *attr_mbuf = find_attr_with_handle(attr_handle);
    if (!attr_mbuf) {
        attr_mbuf = calloc(1, sizeof(struct data_mbuf));
        if (!attr_mbuf) {
            ESP_LOGE(TAG, "Failed to allocate memory for storing outbuf and outlen");
            return ESP_ERR_NO_MEM;
        }
        SLIST_INSERT_HEAD(&data_mbuf_list, attr_mbuf, node);
        attr_mbuf->attr_handle = attr_handle;
    } else {
        free(attr_mbuf->outbuf);
    }
    attr_mbuf->outbuf = outbuf;
    attr_mbuf->outlen = outlen;
    return ESP_OK;
}
