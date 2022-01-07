
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



__attribute__((used)) static int _mdns_txt_item_name_get_len(const uint8_t * data, size_t len)
{
    int i;
    if (*data == '=') {
        return -1;
    }
    for (i = 0; i < len; i++) {
        if (data[i] == '=') {
            return i;
        }
    }
    return len;
}
