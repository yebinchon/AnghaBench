
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int key ;
struct TYPE_3__ {int Size; int Buf; } ;
typedef int CRYPT ;
typedef TYPE_1__ BUF ;


 char* CopyStr (char*) ;
 int Encrypt (int *,char*,int ,int) ;
 int FreeCrypt (int *) ;
 int * NewCrypt (char*,int) ;
 char* ZeroMalloc (int) ;

char *DecryptPassword(BUF *b)
{
 char *str;
 char *key = "EncryptPassword";
 CRYPT *c;

 if (b == ((void*)0))
 {
  return CopyStr("");
 }

 str = ZeroMalloc(b->Size + 1);
 c = NewCrypt(key, sizeof(key));
 Encrypt(c, str, b->Buf, b->Size);
 FreeCrypt(c);

 str[b->Size] = 0;

 return str;
}
