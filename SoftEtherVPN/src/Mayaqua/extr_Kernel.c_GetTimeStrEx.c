
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char wchar_t ;
typedef int UINT ;
struct TYPE_7__ {int SecondStr; int MinuteStr; int HourStr; } ;
struct TYPE_6__ {int wSecond; int wMinute; int wHour; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef TYPE_2__ LOCALE ;


 scalar_t__ SE_LANG_CHINESE_ZH ;
 scalar_t__ SE_LANG_JAPANESE ;
 int UniFormat (char*,int ,char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ _GETLANG () ;
 TYPE_2__ current_locale ;

void GetTimeStrEx(wchar_t *str, UINT size, SYSTEMTIME *st, LOCALE *locale)
{
 wchar_t *tag = L"%02u%s%02u%s%02u%s";

 if (str == ((void*)0) || st == ((void*)0))
 {
  return;
 }

 if (_GETLANG() == SE_LANG_JAPANESE || _GETLANG() == SE_LANG_CHINESE_ZH)
 {
  tag = L"%2u%s%2u%s%2u%s";
 }

 locale = (locale != ((void*)0) ? locale : &current_locale);
 UniFormat(str, size,
  tag,
  st->wHour, locale->HourStr,
  st->wMinute, locale->MinuteStr,
  st->wSecond, locale->SecondStr);
}
