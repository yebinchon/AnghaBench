
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef scalar_t__ UINT ;
struct TYPE_11__ {int Size; } ;
struct TYPE_10__ {int TitleLocal; int TitleEnglish; int Name; } ;
typedef int LIST ;
typedef TYPE_1__ LANGLIST ;
typedef TYPE_2__ BUF ;


 int AppendBufStr (TYPE_2__*,char*) ;
 int AppendBufUtf8 (TYPE_2__*,int *) ;
 int DumpBufWIfNecessary (TYPE_2__*,int *) ;
 int FreeBuf (TYPE_2__*) ;
 int FreeLangList (int *) ;
 int LANG_CONFIG_TEMPLETE ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * LoadLangList () ;
 int MAX_SIZE ;
 TYPE_2__* ReadDump (int ) ;
 int SeekBuf (TYPE_2__*,int ,int ) ;
 int UniFormat (int *,int,char*,int ,int ,int ) ;

bool SaveLangConfig(wchar_t *filename, char *str)
{
 BUF *b;
 LIST *o;
 UINT i;
 bool ret;

 if (filename == ((void*)0))
 {
  return 0;
 }


 b = ReadDump(LANG_CONFIG_TEMPLETE);
 if (b == ((void*)0))
 {
  return 0;
 }

 SeekBuf(b, b->Size, 0);

 o = LoadLangList();
 if (o != ((void*)0))
 {
  wchar_t tmp[MAX_SIZE];

  AppendBufStr(b, "# Available Language IDs are:\r\n");

  for (i = 0;i < LIST_NUM(o);i++)
  {
   LANGLIST *e = LIST_DATA(o, i);

   UniFormat(tmp, sizeof(tmp), L"#  %S: %s (%s)\r\n",
    e->Name, e->TitleEnglish, e->TitleLocal);

   AppendBufUtf8(b, tmp);
  }

  AppendBufStr(b, "\r\n\r\n# Specify a Language ID here.\r\n");
  AppendBufStr(b, str);
  AppendBufStr(b, "\r\n\r\n");

  FreeLangList(o);
 }

 ret = DumpBufWIfNecessary(b, filename);

 FreeBuf(b);

 return ret;
}
