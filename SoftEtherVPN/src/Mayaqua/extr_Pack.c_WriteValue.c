
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IntValue; int Size; int UniStr; int * Str; int * Data; int Int64Value; } ;
typedef TYPE_1__ VALUE ;
typedef int UINT ;
typedef int BYTE ;
typedef int BUF ;


 int CalcUniToUtf8 (int ) ;
 int Free (int *) ;
 int StrLen (int *) ;
 int UniToUtf8 (int *,int,int ) ;





 int WriteBuf (int *,int *,int) ;
 int WriteBufInt (int *,int) ;
 int WriteBufInt64 (int *,int ) ;
 int * ZeroMalloc (int) ;

void WriteValue(BUF *b, VALUE *v, UINT type)
{
 UINT len;
 BYTE *u;
 UINT u_size;

 if (b == ((void*)0) || v == ((void*)0))
 {
  return;
 }


 switch (type)
 {
 case 131:
  WriteBufInt(b, v->IntValue);
  break;
 case 130:
  WriteBufInt64(b, v->Int64Value);
  break;
 case 132:

  WriteBufInt(b, v->Size);

  WriteBuf(b, v->Data, v->Size);
  break;
 case 129:
  len = StrLen(v->Str);

  WriteBufInt(b, len);

  WriteBuf(b, v->Str, len);
  break;
 case 128:

  u_size = CalcUniToUtf8(v->UniStr) + 1;
  u = ZeroMalloc(u_size);
  UniToUtf8(u, u_size, v->UniStr);

  WriteBufInt(b, u_size);

  WriteBuf(b, u, u_size);
  Free(u);
  break;
 }
}
