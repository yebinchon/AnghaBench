
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int counter ;
 int emit_alias (int *,char const*,char const* const,char const*) ;
 int fprintf (int *,char*,char const*,int) ;

__attribute__((used)) static void emit_encoding (FILE* out1, FILE* out2, const char* tag, const char* const* names, size_t n, const char* c_name)
{
  fprintf(out2,"  (int)(long)&((struct stringpool2_t *)0)->stringpool_%s_%u,\n",tag,counter);
  for (; n > 0; names++, n--)
    emit_alias(out1, tag, *names, c_name);
}
