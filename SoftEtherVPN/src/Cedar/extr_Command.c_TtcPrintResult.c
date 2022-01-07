
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp2 ;
typedef int tmp1 ;
typedef int tmp ;
typedef int str ;
struct TYPE_8__ {int (* Write ) (TYPE_2__*,char*) ;} ;
struct TYPE_7__ {int Double; int BpsTotal; int BpsUpload; int BpsDownload; int NumBytesTotal; int NumBytesUpload; int NumBytesDownload; scalar_t__ Raw; int Span; } ;
typedef TYPE_1__ TT_RESULT ;
typedef int CT ;
typedef TYPE_2__ CONSOLE ;


 int CtFree (int *,TYPE_2__*) ;
 int CtInsert (int *,char*,char*,char*) ;
 int CtInsertColumn (int *,char*,int) ;
 int * CtNew () ;
 int GetSpanStrMilli (char*,int,int ) ;
 int MAX_SIZE ;
 int ReplaceStr (char*,int,char*,char*,char*) ;
 int StrToUni (char*,int,char*) ;
 int ToStr3 (char*,int,int ) ;
 int ToStrByte1000 (char*,int,int ) ;
 int UniFormat (char*,int,char*,char*) ;
 char* _UU (char*) ;
 int stub1 (TYPE_2__*,char*) ;

void TtcPrintResult(CONSOLE *c, TT_RESULT *res)
{
 CT *ct;
 wchar_t tmp[MAX_SIZE];
 wchar_t tmp1[MAX_SIZE];
 wchar_t tmp2[MAX_SIZE];
 char str[MAX_SIZE];

 if (c == ((void*)0) || res == ((void*)0))
 {
  return;
 }

 c->Write(c, _UU("TTC_RES_TITLE"));

 ct = CtNew();
 CtInsertColumn(ct, _UU("TTC_RES_COLUMN_1"), 0);
 CtInsertColumn(ct, _UU("TTC_RES_COLUMN_2"), 1);
 CtInsertColumn(ct, _UU("TTC_RES_COLUMN_3"), 1);


 GetSpanStrMilli(str, sizeof(str), res->Span);
 StrToUni(tmp, sizeof(tmp), str);
 CtInsert(ct, _UU("TTC_RES_SPAN"), tmp, L"");


 CtInsert(ct, _UU("TTC_RES_ETHER"), res->Raw ? _UU("SEC_NO") : _UU("SEC_YES"), L"");


 ToStr3(str, sizeof(str), res->NumBytesDownload);
 UniFormat(tmp1, sizeof(tmp1), L"%S Bytes", str);
 ToStrByte1000(str, sizeof(str), res->NumBytesDownload);
 StrToUni(tmp2, sizeof(tmp2), str);
 CtInsert(ct, _UU("TTC_RES_BYTES_DOWNLOAD"), tmp1, tmp2);


 ToStr3(str, sizeof(str), res->NumBytesUpload);
 UniFormat(tmp1, sizeof(tmp1), L"%S Bytes", str);
 ToStrByte1000(str, sizeof(str), res->NumBytesUpload);
 StrToUni(tmp2, sizeof(tmp2), str);
 CtInsert(ct, _UU("TTC_RES_BYTES_UPLOAD"), tmp1, tmp2);


 ToStr3(str, sizeof(str), res->NumBytesTotal);
 UniFormat(tmp1, sizeof(tmp1), L"%S Bytes", str);
 ToStrByte1000(str, sizeof(str), res->NumBytesTotal);
 StrToUni(tmp2, sizeof(tmp2), str);
 CtInsert(ct, _UU("TTC_RES_BYTES_TOTAL"), tmp1, tmp2);


 CtInsert(ct, _UU("TTC_RES_DOUBLE"), (res->Double == 0) ? _UU("SEC_NO") : _UU("SEC_YES"), L"");


 ToStr3(str, sizeof(str), res->BpsDownload);
 UniFormat(tmp1, sizeof(tmp1), L"%S bps", str);
 ToStrByte1000(str, sizeof(str), res->BpsDownload);
 ReplaceStr(str, sizeof(str), str, "Bytes", "bps");
 StrToUni(tmp2, sizeof(tmp2), str);
 CtInsert(ct, _UU("TTC_RES_BPS_DOWNLOAD"), tmp1, tmp2);


 ToStr3(str, sizeof(str), res->BpsUpload);
 UniFormat(tmp1, sizeof(tmp1), L"%S bps", str);
 ToStrByte1000(str, sizeof(str), res->BpsUpload);
 ReplaceStr(str, sizeof(str), str, "Bytes", "bps");
 StrToUni(tmp2, sizeof(tmp2), str);
 CtInsert(ct, _UU("TTC_RES_BPS_UPLOAD"), tmp1, tmp2);


 ToStr3(str, sizeof(str), res->BpsTotal);
 UniFormat(tmp1, sizeof(tmp1), L"%S bps", str);
 ToStrByte1000(str, sizeof(str), res->BpsTotal);
 ReplaceStr(str, sizeof(str), str, "Bytes", "bps");
 StrToUni(tmp2, sizeof(tmp2), str);
 CtInsert(ct, _UU("TTC_RES_BPS_TOTAL"), tmp1, tmp2);

 CtFree(ct, c);
}
