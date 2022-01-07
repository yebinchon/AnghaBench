
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_store ;
typedef int png_const_structp ;
typedef char* png_const_charp ;


 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int stderr ;
 int store_message (int *,int ,char*,int,int ,char*) ;

__attribute__((used)) static void
store_verbose(png_store *ps, png_const_structp pp, png_const_charp prefix,
   png_const_charp message)
{
   char buffer[512];

   if (prefix)
      fputs(prefix, stderr);

   (void)store_message(ps, pp, buffer, sizeof buffer, 0, message);
   fputs(buffer, stderr);
   fputc('\n', stderr);
}
