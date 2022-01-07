
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int assert (int ) ;
 int * config ;
 char* config_get_string (int *,char const*,char const*,int *) ;
 int isxdigit (unsigned char) ;
 int sscanf (char const*,char*,unsigned int*) ;
 size_t strlen (char const*) ;

bool btc_config_get_bin(const char *section, const char *key, uint8_t *value, size_t *length)
{
    assert(config != ((void*)0));
    assert(section != ((void*)0));
    assert(key != ((void*)0));
    assert(value != ((void*)0));
    assert(length != ((void*)0));

    const char *value_str = config_get_string(config, section, key, ((void*)0));

    if (!value_str) {
        return 0;
    }

    size_t value_len = strlen(value_str);
    if ((value_len % 2) != 0 || *length < (value_len / 2)) {
        return 0;
    }

    for (size_t i = 0; i < value_len; ++i)
        if (!isxdigit((unsigned char)value_str[i])) {
            return 0;
        }

    for (*length = 0; *value_str; value_str += 2, *length += 1) {
        unsigned int val;
        sscanf(value_str, "%02x", &val);
        value[*length] = (uint8_t)(val);
    }

    return 1;
}
