
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int tmp ;
typedef char USHORT ;
typedef scalar_t__ UINT ;
typedef int BUF ;


 int Endian16 (char) ;
 int FreeBuf (int *) ;
 int GetNextByte (int *) ;
 int * NewBuf () ;
 int ReadBuf (int *,char*,int) ;
 int SeekBuf (int *,int ,int ) ;
 int StrCat (char*,scalar_t__,char*) ;
 int StrCpy (char*,scalar_t__,char*) ;
 scalar_t__ StrLen (char*) ;
 int WriteBuf (int *,void*,scalar_t__) ;
 int Zero (char*,int) ;

bool ParseDnsQuery(char *name, UINT name_size, void *data, UINT data_size)
{
 BUF *b;
 char tmp[257];
 bool ok = 1;
 USHORT val;

 if (name == ((void*)0) || data == ((void*)0) || data_size == 0)
 {
  return 0;
 }
 StrCpy(name, name_size, "");

 b = NewBuf();
 WriteBuf(b, data, data_size);
 SeekBuf(b, 0, 0);

 while (1)
 {
  UINT next_len = (UINT)GetNextByte(b);
  if (next_len > 0)
  {

   Zero(tmp, sizeof(tmp));
   if (ReadBuf(b, tmp, next_len) != next_len)
   {
    ok = 0;
    break;
   }

   if (StrLen(name) != 0)
   {
    StrCat(name, name_size, ".");
   }
   StrCat(name, name_size, tmp);
  }
  else
  {

   break;
  }
 }

 if (ReadBuf(b, &val, sizeof(val)) != sizeof(val))
 {
  ok = 0;
 }
 else
 {
  if (Endian16(val) != 0x01 && Endian16(val) != 0x0c)
  {
   ok = 0;
  }
 }

 if (ReadBuf(b, &val, sizeof(val)) != sizeof(val))
 {
  ok = 0;
 }
 else
 {
  if (Endian16(val) != 0x01)
  {
   ok = 0;
  }
 }

 FreeBuf(b);

 if (ok == 0 || StrLen(name) == 0)
 {
  return 0;
 }
 else
 {
  return 1;
 }
}
