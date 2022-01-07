
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef size_t UINT ;


 int Copy (char*,char*,size_t) ;
 int MAX_SIZE ;
 int StrCpy (char*,int,char*) ;
 size_t StrLen (char*) ;
 int StrUpper (char*) ;
 size_t WPC_DATA_ENTRY_SIZE ;

void WpcFillEntryName(char *dst, char *name)
{
 UINT i, len;
 char tmp[MAX_SIZE];

 if (dst == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 StrCpy(tmp, sizeof(tmp), name);
 StrUpper(tmp);
 len = StrLen(tmp);

 for (i = 0;i < WPC_DATA_ENTRY_SIZE;i++)
 {
  dst[i] = ' ';
 }

 if (len <= WPC_DATA_ENTRY_SIZE)
 {
  Copy(dst, tmp, len);
 }
 else
 {
  Copy(dst, tmp, WPC_DATA_ENTRY_SIZE);
 }
}
