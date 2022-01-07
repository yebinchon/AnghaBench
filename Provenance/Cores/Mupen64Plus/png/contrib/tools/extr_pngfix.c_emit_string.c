
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char const UCHAR_MAX ;
 int fprintf (int *,char*,char const) ;
 scalar_t__ isgraph (char const) ;
 scalar_t__ isspace (char const) ;
 int putc (char const,int *) ;

__attribute__((used)) static void
emit_string(const char *str, FILE *out)



{
   for (; *str; ++str)
      if (isgraph(UCHAR_MAX & *str))
         putc(*str, out);

      else if (isspace(UCHAR_MAX & *str))
         putc('_', out);

      else
         fprintf(out, "\\%.3o", *str);
}
