
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int memcpy (char*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void emit_header(FILE *f, const char *fname)
{
 char tmp[128] = "/*                                                            */";
 memcpy(tmp + 3, fname, strlen(fname));
 fprintf(f, "\n\n");
 fprintf(f, "/**************************************************************/\n");
 fprintf(f, "/**************************************************************/\n");
 fprintf(f, "%s\n", tmp);
 fprintf(f, "/**************************************************************/\n");
}
