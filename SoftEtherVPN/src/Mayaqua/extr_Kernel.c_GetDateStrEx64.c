
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int UINT64 ;
typedef int UINT ;
struct TYPE_5__ {int Unknown; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ LOCALE ;


 int GetDateStrEx (int *,int ,int *,TYPE_1__*) ;
 scalar_t__ LocalToSystem64 (int ) ;
 scalar_t__ SystemToLocal64 (int ) ;
 int UINT64ToSystem (int *,int ) ;
 int UniStrCpy (int *,int ,int ) ;
 TYPE_1__ current_locale ;

void GetDateStrEx64(wchar_t *str, UINT size, UINT64 sec64, LOCALE *locale)
{
 SYSTEMTIME st;
 if (locale == ((void*)0))
 {
  locale = &current_locale;
 }
 if (sec64 == 0 || SystemToLocal64(sec64) == 0 || LocalToSystem64(sec64) == 0)
 {
  UniStrCpy(str, size, locale->Unknown);
  return;
 }
 UINT64ToSystem(&st, sec64);
 GetDateStrEx(str, size, &st, locale);
}
