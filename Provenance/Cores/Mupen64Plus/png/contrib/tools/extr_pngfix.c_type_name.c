
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int FILE ;


 int putc (int ,int *) ;
 int type_char (int) ;

__attribute__((used)) static void
type_name(png_uint_32 type, FILE *out)
{
   putc(type_char(type >> 24), out);
   putc(type_char(type >> 16), out);
   putc(type_char(type >> 8), out);
   putc(type_char(type ), out);
}
