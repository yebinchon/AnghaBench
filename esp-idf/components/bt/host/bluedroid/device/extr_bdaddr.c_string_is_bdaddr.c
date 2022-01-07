
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int ets_isxdigit (char const) ;
 size_t strlen (char const*) ;

bool string_is_bdaddr(const char *string)
{
    assert(string != ((void*)0));

    size_t len = strlen(string);
    if (len != 17) {
        return 0;
    }

    for (size_t i = 0; i < len; ++i) {

        if (((i + 1) % 3) == 0 && string[i] != ':') {
            return 0;
        }


        if (((i + 1) % 3) != 0 && !ets_isxdigit(string[i])) {
            return 0;
        }
    }
    return 1;
}
