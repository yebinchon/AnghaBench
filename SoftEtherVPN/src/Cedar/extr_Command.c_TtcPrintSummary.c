
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
struct TYPE_3__ {int Print; int Param; scalar_t__ Double; scalar_t__ Raw; scalar_t__ Span; int Type; int NumTcp; int Port; int Host; } ;
typedef TYPE_1__ TTC ;


 char* GetTtcTypeStr (int ) ;
 int MAX_SIZE ;
 int StrToUni (char*,int,int ) ;
 int TtPrint (int ,int ,char*) ;
 int UniFormat (char*,int,char*,...) ;
 int UniToStru (char*,int ) ;
 char* _UU (char*) ;

void TtcPrintSummary(TTC *ttc)
{
 wchar_t tmp[MAX_SIZE];
 wchar_t tmp2[MAX_SIZE];
 wchar_t *tag = L"%-35s %s";

 if (ttc == ((void*)0))
 {
  return;
 }

 TtPrint(ttc->Param, ttc->Print, L"");
 TtPrint(ttc->Param, ttc->Print, _UU("TTC_SUMMARY_BAR"));
 TtPrint(ttc->Param, ttc->Print, _UU("TTC_SUMMARY_TITLE"));
 TtPrint(ttc->Param, ttc->Print, L"");


 StrToUni(tmp2, sizeof(tmp2), ttc->Host);
 UniFormat(tmp, sizeof(tmp), tag, _UU("TTC_SUMMARY_HOST"), tmp2);
 TtPrint(ttc->Param, ttc->Print, tmp);


 UniToStru(tmp2, ttc->Port);
 UniFormat(tmp, sizeof(tmp), tag, _UU("TTC_SUMMARY_PORT"), tmp2);
 TtPrint(ttc->Param, ttc->Print, tmp);


 UniToStru(tmp2, ttc->NumTcp);
 UniFormat(tmp, sizeof(tmp), tag, _UU("TTC_SUMMARY_NUMTCP"), tmp2);
 TtPrint(ttc->Param, ttc->Print, tmp);


 UniFormat(tmp, sizeof(tmp), tag, _UU("TTC_SUMMARY_TYPE"), GetTtcTypeStr(ttc->Type));
 TtPrint(ttc->Param, ttc->Print, tmp);


 UniFormat(tmp2, sizeof(tmp2), _UU("TTC_SPAN_STR"), (double)(ttc->Span) / 1000.0);
 UniFormat(tmp, sizeof(tmp), tag, _UU("TTC_SUMMARY_SPAN"), tmp2);
 TtPrint(ttc->Param, ttc->Print, tmp);


 UniFormat(tmp, sizeof(tmp), tag, _UU("TTC_SUMMARY_ETHER"), ttc->Raw ? _UU("SEC_NO") : _UU("SEC_YES"));
 TtPrint(ttc->Param, ttc->Print, tmp);


 UniFormat(tmp, sizeof(tmp), tag, _UU("TTC_SUMMARY_DOUBLE"), ttc->Double ? _UU("SEC_YES") : _UU("SEC_NO"));
 TtPrint(ttc->Param, ttc->Print, tmp);

 TtPrint(ttc->Param, ttc->Print, _UU("TTC_SUMMARY_BAR"));
 TtPrint(ttc->Param, ttc->Print, L"");
}
