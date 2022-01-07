
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X ;
struct TYPE_3__ {int Cedar; } ;
typedef int FOLDER ;
typedef TYPE_1__ CLIENT ;
typedef int BUF ;


 int AddCa (int ,int *) ;
 int * BufToX (int *,int) ;
 int * CfgGetBuf (int *,char*) ;
 int FreeBuf (int *) ;
 int FreeX (int *) ;

void CiLoadCACert(CLIENT *c, FOLDER *f)
{
 BUF *b;
 X *x;

 if (c == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 b = CfgGetBuf(f, "X509");
 if (b == ((void*)0))
 {
  return;
 }

 x = BufToX(b, 0);

 AddCa(c->Cedar, x);

 FreeX(x);

 FreeBuf(b);
}
