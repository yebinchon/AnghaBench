
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iso639; scalar_t__ iso639_1; scalar_t__ eng_name; } ;
typedef TYPE_1__ iso639_lang_t ;


 TYPE_1__ lang_any ;
 scalar_t__ languages ;
 int strncmp (scalar_t__,char*,int) ;
 char tolower (int) ;

iso639_lang_t * lang_for_code( int code )
{
    char code_string[2];
    iso639_lang_t * lang;

    code_string[0] = tolower( ( code >> 8 ) & 0xFF );
    code_string[1] = tolower( code & 0xFF );

    if ((lang_any.iso639_1 && !strncmp(lang_any.iso639_1, code_string, 2)) ||
        (lang_any.iso639 && !strncmp(lang_any.iso639, code_string, 2)))
    {
        return &lang_any;
    }
    for (lang = (iso639_lang_t*) languages; lang->eng_name; lang++)
    {
        if ((lang->iso639_1 && !strncmp( lang->iso639_1, code_string, 2)) ||
            (lang->iso639 && !strncmp(lang->iso639, code_string, 2)))
        {
            return lang;
        }
    }


    return (iso639_lang_t*) languages;
}
