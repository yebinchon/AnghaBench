
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int config_get_var_val (int *,char*,int,char**,char**) ;
 int emu_set_defconfig () ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char const*,char*) ;
 int keys_parse_all (int *) ;
 int lprintf (char*,char const*,...) ;
 int parse (char*,char*,int*) ;
 int printf (char*) ;
 int rewind (int *) ;
 int seek_sect (int *,char const*) ;

int config_readsect(const char *fname, const char *section)
{
 char line[128], *var, *val;
 int keys_encountered = 0;
 FILE *f;
 int ret;

 f = fopen(fname, "r");
 if (f == ((void*)0)) return -1;

 if (section != ((void*)0))
 {

  ret = seek_sect(f, section);
  if (!ret) {
   lprintf("config_readsect: %s: missing section [%s]\n", fname, section);
   fclose(f);
   return -1;
  }
 }

 emu_set_defconfig();

 while (!feof(f))
 {
  ret = config_get_var_val(f, line, sizeof(line), &var, &val);
  if (ret == 0) break;
  if (ret == -1) continue;

  parse(var, val, &keys_encountered);
 }

 if (keys_encountered) {
  rewind(f);
  keys_parse_all(f);
 }

 fclose(f);

 lprintf("config_readsect: loaded from %s", fname);
 if (section != ((void*)0))
  lprintf(" [%s]", section);
 printf("\n");

 return 0;
}
