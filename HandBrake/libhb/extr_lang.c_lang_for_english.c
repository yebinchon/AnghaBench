
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ eng_name; } ;
typedef TYPE_1__ iso639_lang_t ;


 TYPE_1__ lang_any ;
 scalar_t__ languages ;
 int strcmp (scalar_t__,char const*) ;

iso639_lang_t * lang_for_english( const char * english )
{
    iso639_lang_t * lang;

    if (!strcmp(lang_any.eng_name, english))
    {
        return &lang_any;
    }
    for (lang = (iso639_lang_t*) languages; lang->eng_name; lang++)
    {
        if (!strcmp(lang->eng_name, english))
        {
            return lang;
        }
    }


    return (iso639_lang_t*) languages;
}
