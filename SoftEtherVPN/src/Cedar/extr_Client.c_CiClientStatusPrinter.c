
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_6__ {int * StatusWindow; } ;
struct TYPE_5__ {int Win32HideConnectWindow; TYPE_2__* Account; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ ACCOUNT ;


 int CncStatusPrinterWindowPrint (int *,int *) ;
 int * CncStatusPrinterWindowStart (TYPE_1__*) ;
 int CncStatusPrinterWindowStop (int *) ;
 int UniPrint (char*,int *) ;
 scalar_t__ UniStrCmpi (int *,char*) ;

void CiClientStatusPrinter(SESSION *s, wchar_t *status)
{
 UniPrint(L"Status: %s\n", status);

}
