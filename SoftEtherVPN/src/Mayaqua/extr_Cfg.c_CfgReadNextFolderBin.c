
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int name ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
typedef int FOLDER ;
typedef int BUF ;


 int CalcUtf8ToUni (int *,int ) ;
 int CfgAddBool (int *,char*,int) ;
 int CfgAddByte (int *,char*,int *,scalar_t__) ;
 int CfgAddInt (int *,char*,scalar_t__) ;
 int CfgAddInt64 (int *,char*,int ) ;
 int CfgAddUniStr (int *,char*,int *) ;
 int * CfgCreateFolder (int *,char*) ;
 int Free (int *) ;





 int MAX_SIZE ;
 int ReadBuf (int *,int *,scalar_t__) ;
 scalar_t__ ReadBufInt (int *) ;
 int ReadBufInt64 (int *) ;
 int ReadBufStr (int *,char*,int) ;
 int StrLen (int *) ;
 int Utf8ToUni (int *,int ,int *,int ) ;
 int * ZeroMalloc (scalar_t__) ;

void CfgReadNextFolderBin(BUF *b, FOLDER *parent)
{
 char name[MAX_SIZE];
 FOLDER *f;
 UINT n, i;
 UINT size;
 UCHAR *buf;
 wchar_t *string;

 if (b == ((void*)0) || parent == ((void*)0))
 {
  return;
 }


 ReadBufStr(b, name, sizeof(name));
 f = CfgCreateFolder(parent, name);


 n = ReadBufInt(b);
 for (i = 0;i < n;i++)
 {

  CfgReadNextFolderBin(b, f);
 }


 n = ReadBufInt(b);
 for (i = 0;i < n;i++)
 {
  UINT type;


  ReadBufStr(b, name, sizeof(name));

  type = ReadBufInt(b);

  switch (type)
  {
  case 130:

   CfgAddInt(f, name, ReadBufInt(b));
   break;

  case 129:

   CfgAddInt64(f, name, ReadBufInt64(b));
   break;

  case 131:

   size = ReadBufInt(b);
   buf = ZeroMalloc(size);
   ReadBuf(b, buf, size);
   CfgAddByte(f, name, buf, size);
   Free(buf);
   break;

  case 128:

   size = ReadBufInt(b);
   buf = ZeroMalloc(size + 1);
   ReadBuf(b, buf, size);
   string = ZeroMalloc(CalcUtf8ToUni(buf, StrLen(buf)) + 4);
   Utf8ToUni(string, 0, buf, StrLen(buf));
   CfgAddUniStr(f, name, string);
   Free(string);
   Free(buf);
   break;

  case 132:

   CfgAddBool(f, name, ReadBufInt(b) == 0 ? 0 : 1);
   break;
  }
 }
}
