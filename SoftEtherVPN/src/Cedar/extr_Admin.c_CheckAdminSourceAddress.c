
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int RemoteIP; } ;
struct TYPE_6__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ SOCK ;
typedef int IP ;
typedef int BUF ;


 int ADMINIP_TXT ;
 char* CfgReadNextLine (int *) ;
 scalar_t__ CmpIpAddr (int *,int *) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int FreeToken (TYPE_1__*) ;
 size_t INFINITE ;
 int IPAnd4 (int *,int *,int *) ;
 int IPAnd6 (int *,int *,int *) ;
 scalar_t__ IsIP4 (int *) ;
 scalar_t__ IsIP6 (int *) ;
 scalar_t__ ParseIpAndMask46 (char*,int *,int *) ;
 TYPE_1__* ParseToken (char*,char*) ;
 int * ReadDump (int ) ;
 size_t SearchStrEx (char*,char*,int ,int) ;
 scalar_t__ StrCmpi (char*,char*) ;
 scalar_t__ StrToIP (int *,char*) ;
 int Trim (char*) ;

bool CheckAdminSourceAddress(SOCK *sock, char *hubname)
{
 BUF *b;
 char *s;
 bool ok = 0;

 if (sock == ((void*)0))
 {
  return 0;
 }

 b = ReadDump(ADMINIP_TXT);
 if (b == ((void*)0))
 {
  return 1;
 }

 while (1)
 {
  UINT i;
  TOKEN_LIST *t;
  IP ip;
  IP mask;
  IP ip1;
  IP ip2;
  s = CfgReadNextLine(b);

  if (s == ((void*)0))
  {
   break;
  }

  Trim(s);

  i = SearchStrEx(s, "//", 0, 0);
  if (i != INFINITE)
  {
   s[i] = 0;
  }

  i = SearchStrEx(s, "#", 0, 0);
  if (i != INFINITE)
  {
   s[i] = 0;
  }

  Trim(s);

  t = ParseToken(s, " \t");
  if (t != ((void*)0))
  {
   if (t->NumTokens >= 1)
   {
    if (t->NumTokens == 1 || StrCmpi(hubname, t->Token[1]) == 0)
    {
     if (ParseIpAndMask46(t->Token[0], &ip, &mask))
     {
      if (IsIP4(&sock->RemoteIP) && IsIP4(&ip))
      {
       IPAnd4(&ip1, &sock->RemoteIP, &mask);
       IPAnd4(&ip2, &ip, &mask);

       if (CmpIpAddr(&ip1, &ip2) == 0)
       {
        ok = 1;
       }
      }
      else if (IsIP6(&sock->RemoteIP) && IsIP6(&ip))
      {
       IPAnd6(&ip1, &sock->RemoteIP, &mask);
       IPAnd6(&ip2, &ip, &mask);

       if (CmpIpAddr(&ip1, &ip2) == 0)
       {
        ok = 1;
       }
      }
     }
     else if (StrToIP(&ip, t->Token[0]))
     {
      if (CmpIpAddr(&sock->RemoteIP, &ip) == 0)
      {
       ok = 1;
      }
     }

     if (StrCmpi(t->Token[0], "*") == 0)
     {
      ok = 1;
     }
    }
   }

   FreeToken(t);
  }

  Free(s);
 }

 FreeBuf(b);

 return ok;
}
