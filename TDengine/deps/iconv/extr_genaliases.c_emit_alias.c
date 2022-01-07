
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fprintf (int *,char*,char const*) ;
 int putc (unsigned char,int *) ;

__attribute__((used)) static void emit_alias (FILE* out1, const char* alias, const char* c_name)
{

  const char* s = alias;
  for (; *s; s++) {
    unsigned char c = * (unsigned char *) s;
    if (c >= 0x80)
      exit(1);
    if (c >= 'a' && c <= 'z')
      c -= 'a'-'A';
    putc(c, out1);
  }
  fprintf(out1,", ei_%s\n", c_name);
}
