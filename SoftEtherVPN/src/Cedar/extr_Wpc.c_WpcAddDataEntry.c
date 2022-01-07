
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int size_str ;
typedef int UINT ;
typedef int BUF ;


 int Format (char*,int,char*,int ) ;
 int WPC_DATA_ENTRY_SIZE ;
 int WpcFillEntryName (char*,char*) ;
 int WriteBuf (int *,void*,int) ;

void WpcAddDataEntry(BUF *b, char *name, void *data, UINT size)
{
 char entry_name[WPC_DATA_ENTRY_SIZE];
 char size_str[11];

 if (b == ((void*)0) || name == ((void*)0) || (data == ((void*)0) && size != 0))
 {
  return;
 }

 WpcFillEntryName(entry_name, name);
 WriteBuf(b, entry_name, WPC_DATA_ENTRY_SIZE);

 Format(size_str, sizeof(size_str), "%010u", size);
 WriteBuf(b, size_str, 10);

 WriteBuf(b, data, size);
}
