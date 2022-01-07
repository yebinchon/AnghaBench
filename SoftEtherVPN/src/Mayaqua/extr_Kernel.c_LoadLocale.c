
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef int UINT ;
struct TYPE_8__ {int Unknown; int SpanSecond; int SpanMinute; int SpanHour; int SpanDay; int * DayOfWeek; int SecondStr; int MinuteStr; int HourStr; int DayStr; int MonthStr; int YearStr; } ;
typedef TYPE_2__ LOCALE ;


 int COPY_LOCALE_STR (int ,int,int ) ;
 int UniFreeToken (TYPE_1__*) ;
 TYPE_1__* UniParseToken (int *,char*) ;
 int Zero (TYPE_2__*,int) ;

bool LoadLocale(LOCALE *locale, wchar_t *str)
{
 UNI_TOKEN_LIST *tokens;
 UINT i;

 if (locale == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }


 tokens = UniParseToken(str, L" ");
 if (tokens->NumTokens != 18)
 {
  UniFreeToken(tokens);
  return 0;
 }


 Zero(locale, sizeof(LOCALE));
 COPY_LOCALE_STR(locale->YearStr, sizeof(locale->YearStr), tokens->Token[0]);
 COPY_LOCALE_STR(locale->MonthStr, sizeof(locale->MonthStr), tokens->Token[1]);
 COPY_LOCALE_STR(locale->DayStr, sizeof(locale->DayStr), tokens->Token[2]);
 COPY_LOCALE_STR(locale->HourStr, sizeof(locale->HourStr), tokens->Token[3]);
 COPY_LOCALE_STR(locale->MinuteStr, sizeof(locale->MinuteStr), tokens->Token[4]);
 COPY_LOCALE_STR(locale->SecondStr, sizeof(locale->SecondStr), tokens->Token[5]);

 for (i = 0;i < 7;i++)
 {
  COPY_LOCALE_STR(locale->DayOfWeek[i], sizeof(locale->DayOfWeek[i]),
   tokens->Token[6 + i]);
 }

 COPY_LOCALE_STR(locale->SpanDay, sizeof(locale->SpanDay), tokens->Token[13]);
 COPY_LOCALE_STR(locale->SpanHour, sizeof(locale->SpanHour), tokens->Token[14]);
 COPY_LOCALE_STR(locale->SpanMinute, sizeof(locale->SpanMinute), tokens->Token[15]);
 COPY_LOCALE_STR(locale->SpanSecond, sizeof(locale->SpanSecond), tokens->Token[16]);

 COPY_LOCALE_STR(locale->Unknown, sizeof(locale->Unknown), tokens->Token[17]);

 UniFreeToken(tokens);
 return 1;
}
