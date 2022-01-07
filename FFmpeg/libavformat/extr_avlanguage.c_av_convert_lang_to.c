
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVLangCodespace { ____Placeholder_AVLangCodespace } AVLangCodespace ;


 char const* ff_convert_lang_to (char const*,int) ;

const char *av_convert_lang_to(const char *lang, enum AVLangCodespace target_codespace)
{
    return ff_convert_lang_to(lang, target_codespace);
}
