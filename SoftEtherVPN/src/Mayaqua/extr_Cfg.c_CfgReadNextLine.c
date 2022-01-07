
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {int Current; int Size; scalar_t__ Buf; } ;
typedef TYPE_1__ BUF ;


 int ReadBuf (TYPE_1__*,char*,size_t) ;
 int SeekBuf (TYPE_1__*,int,int) ;
 int StrLen (char*) ;
 char* ZeroMalloc (size_t) ;

char *CfgReadNextLine(BUF *b)
{
 char *tmp;
 char *buf;
 UINT len;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }


 tmp = (char *)b->Buf + b->Current;
 if ((b->Size - b->Current) == 0)
 {

  return ((void*)0);
 }
 len = 0;
 while (1)
 {
  if (tmp[len] == 13 || tmp[len] == 10)
  {
   if (tmp[len] == 13)
   {
    if (len < (b->Size - b->Current))
    {
     len++;
    }
   }
   break;
  }
  len++;
  if (len >= (b->Size - b->Current))
  {
   break;
  }
 }


 buf = ZeroMalloc(len + 1);
 ReadBuf(b, buf, len);
 SeekBuf(b, 1, 1);

 if (StrLen(buf) >= 1)
 {
  if (buf[StrLen(buf) - 1] == 13)
  {
   buf[StrLen(buf) - 1] = 0;
  }
 }

 return buf;
}
