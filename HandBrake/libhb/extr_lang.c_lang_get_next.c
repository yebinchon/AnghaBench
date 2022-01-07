
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso639_lang_t ;


 int const lang_any ;
 int lang_count ;
 int const* languages ;

const iso639_lang_t* lang_get_next(const iso639_lang_t *last)
{
    if (last == ((void*)0) || last == &lang_any)
    {
        return (const iso639_lang_t*)languages;
    }
    if (last < languages ||
        last >= languages + lang_count - 2)
    {
        return ((void*)0);
    }
    return ++last;
}
