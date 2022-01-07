
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso639_lang_t ;


 int const lang_any ;
 int lang_count ;
 int const* languages ;

const iso639_lang_t * lang_for_index( int index )
{
    if (index == -1)
        return &lang_any;

    if (index < 0 || index >= lang_count)
        return ((void*)0);

    return &languages[index];
}
