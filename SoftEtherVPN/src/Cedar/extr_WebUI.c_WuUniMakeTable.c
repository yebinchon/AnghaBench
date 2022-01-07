
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef int UINT ;
struct TYPE_3__ {char* Name; int Value; } ;
typedef TYPE_1__ STRMAP_ENTRY ;
typedef int LIST ;


 int Add (int *,TYPE_1__*) ;
 int CalcUniToStr (scalar_t__*) ;
 int Free (scalar_t__*) ;
 scalar_t__ Malloc (int) ;
 int * NewStrMap () ;
 int UniToStr (char*,int,scalar_t__*) ;
 scalar_t__* WuUniCopyStrTill (scalar_t__*,int,scalar_t__**) ;

__attribute__((used)) static LIST *WuUniMakeTable(wchar_t *def)
{
 LIST *table;
 STRMAP_ENTRY *entry;

 if(def==((void*)0))
 {
  return ((void*)0);
 }

 table = NewStrMap();
 while(*def)
 {
  wchar_t *keytmp;
  UINT keylen;
  entry = (STRMAP_ENTRY*)Malloc(sizeof(STRMAP_ENTRY));
  def = WuUniCopyStrTill(def, L':', &keytmp);
  keylen = CalcUniToStr(keytmp);
  entry->Name = (char*)Malloc(keylen);
  UniToStr(entry->Name, keylen, keytmp);
  def = WuUniCopyStrTill(def, L',', (wchar_t**)&(entry->Value));
  Add(table, entry);
  Free(keytmp);
 }
 return table;
}
