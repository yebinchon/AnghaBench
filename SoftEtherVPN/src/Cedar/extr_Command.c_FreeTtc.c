
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ ErrorCode; int InitedEvent; int Result; int Print; int Param; int Thread; } ;
typedef int TT_RESULT ;
typedef TYPE_1__ TTC ;


 int Copy (int *,int *,int) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (TYPE_1__*) ;
 int INFINITE ;
 int ReleaseEvent (int ) ;
 int ReleaseThread (int ) ;
 int TtPrint (int ,int ,int ) ;
 int WaitThread (int ,int ) ;
 int _UU (char*) ;

UINT FreeTtc(TTC *ttc, TT_RESULT *result)
{
 UINT ret;

 if (ttc == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 WaitThread(ttc->Thread, INFINITE);
 ReleaseThread(ttc->Thread);

 TtPrint(ttc->Param, ttc->Print, _UU("TTC_FREE"));

 ret = ttc->ErrorCode;

 if (ret == ERR_NO_ERROR)
 {
  if (result != ((void*)0))
  {
   Copy(result, &ttc->Result, sizeof(TT_RESULT));
  }
 }

 ReleaseEvent(ttc->InitedEvent);

 Free(ttc);

 return ret;
}
