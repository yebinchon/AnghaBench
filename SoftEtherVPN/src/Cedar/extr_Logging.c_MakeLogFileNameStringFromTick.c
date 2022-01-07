
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_6__ {int CacheFlag; scalar_t__ LastTick; int LastSwitchType; char* LastStr; } ;
struct TYPE_5__ {int wYear; int wMonth; int wDay; int wHour; int wMinute; int wSecond; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef TYPE_2__ LOG ;







 int StrCpy (char*,int,char*) ;
 int SystemToLocal64 (scalar_t__) ;
 scalar_t__ TickToTime (scalar_t__) ;
 int UINT64ToSystem (TYPE_1__*,int ) ;
 int snprintf (char*,int,char*,...) ;

void MakeLogFileNameStringFromTick(LOG *g, char *str, UINT size, UINT64 tick, UINT switch_type)
{
 UINT64 time;
 SYSTEMTIME st;


 if (str == ((void*)0) || g == ((void*)0))
 {
  return;
 }

 if (g->CacheFlag)
 {
  if (g->LastTick == tick &&
   g->LastSwitchType == switch_type)
  {
   StrCpy(str, size, g->LastStr);
   return;
  }
 }

 time = TickToTime(tick);
 UINT64ToSystem(&st, SystemToLocal64(time));

 switch (switch_type)
 {
 case 128:
  snprintf(str, size, "_%04u%02u%02u_%02u%02u%02u",
   st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond);
  break;

 case 130:
  snprintf(str, size, "_%04u%02u%02u_%02u%02u",
   st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute);
  break;

 case 131:
  snprintf(str, size, "_%04u%02u%02u_%02u", st.wYear, st.wMonth, st.wDay, st.wHour);
  break;

 case 132:
  snprintf(str, size, "_%04u%02u%02u", st.wYear, st.wMonth, st.wDay);
  break;

 case 129:
  snprintf(str, size, "_%04u%02u", st.wYear, st.wMonth);
  break;

 default:
  snprintf(str, size, "%s");
  break;
 }

 g->CacheFlag = 1;
 g->LastTick = tick;
 g->LastSwitchType = switch_type;
 StrCpy(g->LastStr, sizeof(g->LastStr), str);
}
