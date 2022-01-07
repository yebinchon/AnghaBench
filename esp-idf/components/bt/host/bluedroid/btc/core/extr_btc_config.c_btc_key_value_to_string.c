
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int assert (int ) ;

__attribute__((used)) static void btc_key_value_to_string(uint8_t *key_value, char *value_str, int key_length)
{
    const char *lookup = "0123456789abcdef";

    assert(key_value != ((void*)0));
    assert(value_str != ((void*)0));

    for (size_t i = 0; i < key_length; ++i) {
        value_str[(i * 2) + 0] = lookup[(key_value[i] >> 4) & 0x0F];
        value_str[(i * 2) + 1] = lookup[key_value[i] & 0x0F];
    }

    return;
}
