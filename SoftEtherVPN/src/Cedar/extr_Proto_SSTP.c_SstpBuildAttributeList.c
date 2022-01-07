
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int SSTP_ATTRIBUTE ;
typedef int LIST ;
typedef int BUF ;


 int Endian16 (int ) ;
 int FreeBuf (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewBuf () ;
 int * SstpBuildAttribute (int *) ;
 int WriteBuf (int *,int *,int) ;
 int WriteBufBuf (int *,int *) ;

BUF *SstpBuildAttributeList(LIST *o, USHORT message_type)
{
 UINT i;
 BUF *b;
 USHORT us;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();

 us = Endian16(message_type);
 WriteBuf(b, &us, sizeof(USHORT));

 us = Endian16((USHORT)LIST_NUM(o));
 WriteBuf(b, &us, sizeof(USHORT));

 for (i = 0;i < LIST_NUM(o);i++)
 {
  SSTP_ATTRIBUTE *a = LIST_DATA(o, i);
  BUF *ab = SstpBuildAttribute(a);

  if (ab != ((void*)0))
  {
   WriteBufBuf(b, ab);

   FreeBuf(ab);
  }
 }

 return b;
}
