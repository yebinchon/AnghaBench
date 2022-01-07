
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputs (char*,int *) ;
 int putc (char const,int *) ;

__attribute__((used)) static void
print_escaped (FILE *stream, const char *str, const char *str_end)
{
  putc ('"', stream);
  for (; str != str_end; str++)
    if (*str == '\n')
      {
        fputs ("\\n\"", stream);
        if (str + 1 == str_end)
          return;
        fputs ("\n\"", stream);
      }
    else
      {
        if (*str == '"' || *str == '\\')
          putc ('\\', stream);
        putc (*str, stream);
      }
  putc ('"', stream);
}
