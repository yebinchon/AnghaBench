
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int LOCALE ;


 int Copy (int *,int *,int) ;
 int LoadLocale (int *,int *) ;
 int current_locale ;
 int * default_locale_str ;

void SetLocale(wchar_t *str)
{
 wchar_t *set_locale_str;
 LOCALE tmp;

 if (str != ((void*)0))
 {
  set_locale_str = str;
 }
 else
 {
  set_locale_str = default_locale_str;
 }

 if (LoadLocale(&tmp, set_locale_str) == 0)
 {
  if (LoadLocale(&tmp, default_locale_str) == 0)
  {
   return;
  }
 }

 Copy(&current_locale, &tmp, sizeof(LOCALE));
}
