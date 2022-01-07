
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int UCHAR ;
typedef int CRYPT ;
typedef int BUF ;


 int Encrypt (int *,int *,char*,scalar_t__) ;
 int Free (int *) ;
 int FreeCrypt (int *) ;
 int * NewBuf () ;
 int * NewCrypt (char*,int ) ;
 int SeekBuf (int *,int ,int ) ;
 int StrLen (char*) ;
 int WriteBuf (int *,int *,scalar_t__) ;
 int * ZeroMalloc (scalar_t__) ;

BUF *EncryptPassword2(char *password)
{
 UCHAR *tmp;
 UINT size;
 char *key = "EncryptPassword2";
 CRYPT *c;
 BUF *b;

 if (password == ((void*)0))
 {
  password = "";
 }

 size = StrLen(password) + 1;
 tmp = ZeroMalloc(size);

 c = NewCrypt(key, StrLen(key));
 Encrypt(c, tmp, password, size - 1);
 FreeCrypt(c);

 b = NewBuf();
 WriteBuf(b, tmp, size - 1);
 SeekBuf(b, 0, 0);
 Free(tmp);

 return b;
}
