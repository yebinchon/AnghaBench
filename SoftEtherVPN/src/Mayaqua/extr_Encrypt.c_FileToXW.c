
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int X ;
typedef int BUF ;


 int * BufToX (int *,int) ;
 int FreeBuf (int *) ;
 int IsBase64 (int *) ;
 int * ReadDumpW (int *) ;

X *FileToXW(wchar_t *filename)
{
 bool text;
 BUF *b;
 X *x;

 if (filename == ((void*)0))
 {
  return ((void*)0);
 }

 b = ReadDumpW(filename);
 text = IsBase64(b);

 x = BufToX(b, text);
 FreeBuf(b);

 return x;
}
