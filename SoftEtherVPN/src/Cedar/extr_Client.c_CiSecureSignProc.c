
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SESSION ;
typedef int SECURE_SIGN ;
typedef int CONNECTION ;


 int CncSecureSignDlg (int *) ;

bool CiSecureSignProc(SESSION *s, CONNECTION *c, SECURE_SIGN *sign)
{

 return CncSecureSignDlg(sign);
}
