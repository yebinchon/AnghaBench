
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iso639_lang_t ;


 int const* lang_for_index (int) ;

const iso639_lang_t* ghb_iso639_lookup_by_int(int idx)
{
    return lang_for_index(idx);
}
