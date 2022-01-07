
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint16_t ;



__attribute__((used)) static int _mdns_txt_items_count_get(const uint8_t * data, size_t len)
{
    if (len == 1) {
        return 0;
    }

    int num_items = 0;
    uint16_t i=0;
    size_t partLen = 0;

    while (i < len) {
        partLen = data[i++];
        if (!partLen) {
            break;
        }
        if ((i+partLen) > len) {
            return -1;
        }
        i+=partLen;
        num_items++;
    }
    return num_items;
}
