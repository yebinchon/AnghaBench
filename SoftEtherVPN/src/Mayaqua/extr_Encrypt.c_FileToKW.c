
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int K ;
typedef int BUF ;


 int * BufToK (int *,int,int,char*) ;
 int FreeBuf (int *) ;
 int IsBase64 (int *) ;
 int * ReadDumpW (int *) ;

K *FileToKW(wchar_t *filename, bool private_key, char *password)
{
 bool text;
 BUF *b;
 K *k;

 if (filename == ((void*)0))
 {
  return ((void*)0);
 }

 b = ReadDumpW(filename);
 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 text = IsBase64(b);
 if (text == 0)
 {
  k = BufToK(b, private_key, 0, ((void*)0));
 }
 else
 {
  k = BufToK(b, private_key, 1, ((void*)0));
  if (k == ((void*)0))
  {
   k = BufToK(b, private_key, 1, password);
  }
 }

 FreeBuf(b);

 return k;
}
