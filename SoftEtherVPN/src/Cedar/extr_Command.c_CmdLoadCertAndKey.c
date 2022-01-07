
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int X ;
struct TYPE_7__ {int (* Write ) (TYPE_1__*,int ) ;} ;
typedef int K ;
typedef TYPE_1__ CONSOLE ;


 int CheckXandK (int *,int *) ;
 int * CmdLoadKey (TYPE_1__*,int *) ;
 int * FileToXW (int *) ;
 int FreeK (int *) ;
 int FreeX (int *) ;
 int _UU (char*) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;
 int stub3 (TYPE_1__*,int ) ;

bool CmdLoadCertAndKey(CONSOLE *c, X **xx, K **kk, wchar_t *cert_filename, wchar_t *key_filename)
{
 X *x;
 K *k;

 if (c == ((void*)0) || cert_filename == ((void*)0) || key_filename == ((void*)0) || xx == ((void*)0) || kk == ((void*)0))
 {
  return 0;
 }

 x = FileToXW(cert_filename);
 if (x == ((void*)0))
 {
  c->Write(c, _UU("CMD_LOADCERT_FAILED"));
  return 0;
 }

 k = CmdLoadKey(c, key_filename);
 if (k == ((void*)0))
 {
  c->Write(c, _UU("CMD_LOADKEY_FAILED"));
  FreeX(x);
  return 0;
 }

 if (CheckXandK(x, k) == 0)
 {
  c->Write(c, _UU("CMD_KEYPAIR_FAILED"));
  FreeX(x);
  FreeK(k);

  return 0;
 }

 *xx = x;
 *kk = k;

 return 1;
}
