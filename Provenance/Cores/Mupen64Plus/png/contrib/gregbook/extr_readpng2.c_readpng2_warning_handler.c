
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_structp ;
typedef char* png_const_charp ;


 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void readpng2_warning_handler(png_structp png_ptr, png_const_charp msg)
{
    fprintf(stderr, "readpng2 libpng warning: %s\n", msg);
    fflush(stderr);
    (void)png_ptr;
}
