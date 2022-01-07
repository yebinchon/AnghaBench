
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BUF ;


 int EncodeSafe64 (char*,void*,int) ;
 int Free (char*) ;
 char* Malloc (int) ;
 int StrLen (char*) ;
 int WpcAddDataEntry (int *,char*,char*,int ) ;

void WpcAddDataEntryBin(BUF *b, char *name, void *data, UINT size)
{
 char *str;

 if (b == ((void*)0) || name == ((void*)0) || (data == ((void*)0) && size != 0))
 {
  return;
 }

 str = Malloc(size * 2 + 64);

 EncodeSafe64(str, data, size);

 WpcAddDataEntry(b, name, str, StrLen(str));

 Free(str);
}
