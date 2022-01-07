
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {void* UnicodeValue; void* Value; void* Key; } ;
typedef int LIST ;
typedef TYPE_1__ INI_ENTRY ;
typedef int BYTE ;
typedef int BUF ;


 int Add (int *,TYPE_1__*) ;
 int CalcUtf8ToUni (int *,int ) ;
 char* CfgReadNextLine (int *) ;
 void* CopyStr (char*) ;
 int Free (char*) ;
 scalar_t__ GetKeyAndValue (char*,char*,int,char*,int,int *) ;
 int IsEmptyStr (char*) ;
 int * NewListFast (int *) ;
 int SeekBuf (int *,int ,int ) ;
 int StartWith (char*,char*) ;
 int StrLen (char*) ;
 int Trim (char*) ;
 int Utf8ToUni (void*,int,int *,int ) ;
 void* ZeroMalloc (int) ;

LIST *ReadIni(BUF *b)
{
 LIST *o;

 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 o = NewListFast(((void*)0));

 SeekBuf(b, 0, 0);

 while (1)
 {
  char *line = CfgReadNextLine(b);

  if (line == ((void*)0))
  {
   break;
  }

  Trim(line);

  if (IsEmptyStr(line) == 0)
  {
   if (StartWith(line, "#") == 0 &&
    StartWith(line, "//") == 0 &&
    StartWith(line, ";") == 0)
   {
    char *key, *value;
    UINT size = StrLen(line) + 1;

    key = ZeroMalloc(size);
    value = ZeroMalloc(size);

    if (GetKeyAndValue(line, key, size, value, size, ((void*)0)))
    {
     UINT uni_size;
     INI_ENTRY *e = ZeroMalloc(sizeof(INI_ENTRY));
     e->Key = CopyStr(key);
     e->Value = CopyStr(value);

     uni_size = CalcUtf8ToUni((BYTE *)value, StrLen(value));
     e->UnicodeValue = ZeroMalloc(uni_size);
     Utf8ToUni(e->UnicodeValue, uni_size, (BYTE *)value, StrLen(value));

     Add(o, e);
    }

    Free(key);
    Free(value);
   }
  }

  Free(line);
 }

 return o;
}
