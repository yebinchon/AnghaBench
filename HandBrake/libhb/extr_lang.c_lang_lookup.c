
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso639_lang_t ;


 int const* lang_for_index (int ) ;
 int lang_lookup_index (char const*) ;

const iso639_lang_t * lang_lookup( const char * str )
{
    return lang_for_index(lang_lookup_index(str));
}
