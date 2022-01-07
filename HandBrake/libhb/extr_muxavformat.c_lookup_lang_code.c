
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* iso639_2b; char* iso639_2; } ;
typedef TYPE_1__ iso639_lang_t ;





 TYPE_1__* lang_for_code2 (char*) ;

__attribute__((used)) static char* lookup_lang_code(int mux, char *iso639_2)
{
    iso639_lang_t *lang;
    char *out = ((void*)0);

    switch (mux)
    {
        case 129:
            out = iso639_2;
            break;
        case 130:
        case 128:


            lang = lang_for_code2( iso639_2 );
            out = lang->iso639_2b ? lang->iso639_2b : lang->iso639_2;
            break;
        default:
            break;
    }
    return out;
}
