
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum retro_language { ____Placeholder_retro_language } retro_language ;
typedef int LANGID ;


 int GetUserDefaultUILanguage () ;
 int RETRO_LANGUAGE_ENGLISH ;
 int win32_get_retro_lang_from_langid (int ) ;

enum retro_language frontend_win32_get_user_language(void)
{
   enum retro_language lang = RETRO_LANGUAGE_ENGLISH;






   return lang;
}
