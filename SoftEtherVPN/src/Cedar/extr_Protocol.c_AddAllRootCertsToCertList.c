
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef scalar_t__ UINT ;
typedef int PACK ;
typedef int LIST ;
typedef int BUF ;


 int AddXToCertList (int *,int *) ;
 int * BufToPack (int *) ;
 int * BufToX (int *,int) ;
 int Debug (char*,scalar_t__,scalar_t__,int ) ;
 int FreeBuf (int *) ;
 int FreePack (int *) ;
 int FreeX (int *) ;
 int LIST_NUM (int *) ;
 int * PackGetBufEx (int *,char*,scalar_t__) ;
 scalar_t__ PackGetIndexCount (int *,char*) ;
 int ROOT_CERTS_FILENAME ;
 int * ReadDump (int ) ;

void AddAllRootCertsToCertList(LIST *o)
{
 BUF *buf;
 PACK *p;
 UINT num_ok = 0, num_error = 0;

 if (o == ((void*)0))
 {
  return;
 }

 buf = ReadDump(ROOT_CERTS_FILENAME);
 if (buf == ((void*)0))
 {
  return;
 }

 p = BufToPack(buf);

 if (p != ((void*)0))
 {
  UINT num = PackGetIndexCount(p, "cert");
  UINT i;

  for (i = 0;i < num;i++)
  {
   bool ok = 0;
   BUF *b = PackGetBufEx(p, "cert", i);

   if (b != ((void*)0))
   {
    X *x = BufToX(b, 0);

    if (x != ((void*)0))
    {
     AddXToCertList(o, x);

     ok = 1;

     FreeX(x);
    }

    FreeBuf(b);
   }

   if (ok)
   {
    num_ok++;
   }
   else
   {
    num_error++;
   }
  }

  FreePack(p);
 }

 FreeBuf(buf);

 Debug("AddAllRootCertsToCertList: ok=%u error=%u total_list_len=%u\n", num_ok, num_error, LIST_NUM(o));
}
