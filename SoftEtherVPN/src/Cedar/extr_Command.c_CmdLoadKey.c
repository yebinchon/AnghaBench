
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_7__ {char* (* ReadPassword ) (TYPE_1__*,int ) ;int (* Write ) (TYPE_1__*,int ) ;} ;
typedef int K ;
typedef TYPE_1__ CONSOLE ;
typedef int BUF ;


 int * BufToK (int *,int,int ,char*) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int IsBase64 (int *) ;
 int IsEncryptedK (int *,int) ;
 int * ReadDumpW (int *) ;
 int _UU (char*) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;
 char* stub3 (TYPE_1__*,int ) ;
 int stub4 (TYPE_1__*,int ) ;

K *CmdLoadKey(CONSOLE *c, wchar_t *filename)
{
 BUF *b;

 if (c == ((void*)0) || filename == ((void*)0))
 {
  return ((void*)0);
 }

 b = ReadDumpW(filename);
 if (b == ((void*)0))
 {
  c->Write(c, _UU("CMD_LOADCERT_FAILED"));
  return ((void*)0);
 }
 else
 {
  K *key;
  if (IsEncryptedK(b, 1) == 0)
  {
   key = BufToK(b, 1, IsBase64(b), ((void*)0));
  }
  else
  {
   c->Write(c, _UU("CMD_LOADKEY_ENCRYPTED_1"));

   while (1)
   {
    char *pass = c->ReadPassword(c, _UU("CMD_LOADKEY_ENCRYPTED_2"));

    if (pass == ((void*)0))
    {
     FreeBuf(b);
     return ((void*)0);
    }

    key = BufToK(b, 1, IsBase64(b), pass);
    Free(pass);

    if (key != ((void*)0))
    {
     break;
    }

    c->Write(c, _UU("CMD_LOADKEY_ENCRYPTED_3"));
   }
  }

  FreeBuf(b);

  return key;
 }
}
