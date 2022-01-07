
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
typedef int VALUE ;
typedef int UINT ;
typedef char BYTE ;
typedef int BUF ;


 int CalcUtf8ToUni (char*,int) ;
 int Free (char*) ;
 int MAX_VALUE_SIZE ;
 void* Malloc (int) ;
 int * NewDataValue (void*,int) ;
 int * NewInt64Value (int ) ;
 int * NewIntValue (int) ;
 int * NewStrValue (char*) ;
 int * NewUniStrValue (char*) ;
 int ReadBuf (int *,char*,int) ;
 int ReadBufInt (int *) ;
 int ReadBufInt64 (int *) ;
 int Utf8ToUni (char*,int,char*,int) ;





 char* ZeroMalloc (int ) ;

VALUE *ReadValue(BUF *b, UINT type)
{
 UINT len;
 BYTE *u;
 void *data;
 char *str;
 wchar_t *unistr;
 UINT unistr_size;
 UINT size;
 UINT u_size;
 VALUE *v = ((void*)0);

 if (b == ((void*)0))
 {
  return ((void*)0);
 }


 switch (type)
 {
 case 131:
  v = NewIntValue(ReadBufInt(b));
  break;
 case 130:
  v = NewInt64Value(ReadBufInt64(b));
  break;
 case 132:
  size = ReadBufInt(b);
  if (size > MAX_VALUE_SIZE)
  {

   break;
  }
  data = Malloc(size);
  if (ReadBuf(b, data, size) != size)
  {

   Free(data);
   break;
  }
  v = NewDataValue(data, size);
  Free(data);
  break;
 case 129:
  len = ReadBufInt(b);
  if (len > (MAX_VALUE_SIZE - 1))
  {

   break;
  }
  str = Malloc(len + 1);

  if (ReadBuf(b, str, len) != len)
  {

   Free(str);
   break;
  }
  str[len] = 0;
  v = NewStrValue(str);
  Free(str);
  break;
 case 128:
  u_size = ReadBufInt(b);
  if (u_size > MAX_VALUE_SIZE)
  {

   break;
  }

  u = ZeroMalloc(u_size + 1);
  if (ReadBuf(b, u, u_size) != u_size)
  {

   Free(u);
   break;
  }

  unistr_size = CalcUtf8ToUni(u, u_size);
  if (unistr_size == 0)
  {
   Free(u);
   break;
  }
  unistr = Malloc(unistr_size);
  Utf8ToUni(unistr, unistr_size, u, u_size);
  Free(u);
  v = NewUniStrValue(unistr);
  Free(unistr);
  break;
 }

 return v;
}
