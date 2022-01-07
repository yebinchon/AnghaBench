
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int assert (int ) ;
 int * config ;
 int config_set_string (int *,char const*,char const*,char*,int) ;
 scalar_t__ osi_calloc (size_t) ;
 int osi_free (char*) ;

bool btc_config_set_bin(const char *section, const char *key, const uint8_t *value, size_t length)
{
    const char *lookup = "0123456789abcdef";

    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));

    if (length > 0) {
        assert(value != ((void*)0));
    }

    char *str = (char *)osi_calloc(length * 2 + 1);
    if (!str) {
        return 0;
    }

    for (size_t i = 0; i < length; ++i) {
        str[(i * 2) + 0] = lookup[(value[i] >> 4) & 0x0F];
        str[(i * 2) + 1] = lookup[value[i] & 0x0F];
    }

    config_set_string(config, section, key, str, 0);

    osi_free(str);
    return 1;
}
