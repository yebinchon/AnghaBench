
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* iso639_1; } ;
typedef TYPE_1__ iso639_lang_t ;



int lang_to_code(const iso639_lang_t *lang)
{
    int code = 0;

    if (lang)
        code = (lang->iso639_1[0] << 8) | lang->iso639_1[1];

    return code;
}
