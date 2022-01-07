
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int emit_alias (int *,char const* const,char const*) ;
 int exit (int) ;
 int fprintf (int *,char*) ;
 int putc (unsigned char,int *) ;

__attribute__((used)) static void emit_encoding (FILE* out1, FILE* out2, const char* const* names, size_t n, const char* c_name)
{
  fprintf(out2,"grep 'sizeof(\"");

  {
    const char* s = *names;
    for (; *s; s++) {
      unsigned char c = * (unsigned char *) s;
      if (c >= 0x80)
        exit(1);
      if (c >= 'a' && c <= 'z')
        c -= 'a'-'A';
      putc(c, out2);
    }
  }
  fprintf(out2,"\")' tmp.h | sed -e 's|^.*\\(stringpool_str[0-9]*\\).*$|  (int)(long)\\&((struct stringpool_t *)0)->\\1,|'\n");
  for (; n > 0; names++, n--)
    emit_alias(out1, *names, c_name);
}
