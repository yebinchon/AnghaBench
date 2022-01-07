
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BUF ;


 int * ReadDump (char*) ;
 int StrCpy (char*,int ,char*) ;

BUF *AdminWebTryOneFile(char *filename, char *ret_filename, UINT ret_filename_size)
{
 BUF *b;
 if (filename == ((void*)0) || ret_filename == ((void*)0))
 {
  return ((void*)0);
 }

 b = ReadDump(filename);
 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 StrCpy(ret_filename, ret_filename_size, filename);

 return b;
}
