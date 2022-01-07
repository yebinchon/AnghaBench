
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* fgets (char*,int,int *) ;
 int lprintf (char*,char*,...) ;
 int mystrip (char*) ;
 int * strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

int config_get_var_val(void *file, char *line, int lsize, char **rvar, char **rval)
{
 char *var, *val, *tmp;
 FILE *f = file;
 int len, i;

 tmp = fgets(line, lsize, f);
 if (tmp == ((void*)0)) return 0;

 if (line[0] == '[') return 0;


 len = strlen(line);
 for (i = 0; i < len; i++)
  if (line[i] == '#' || line[i] == '\r' || line[i] == '\n') { line[i] = 0; break; }
 mystrip(line);
 len = strlen(line);
 if (len <= 0) return -1;;


 for (i = 0; i < len; i++)
  if (line[i] == '=') break;
 if (i >= len || strchr(&line[i+1], '=') != ((void*)0)) {
  lprintf("config_readsect: can't parse: %s\n", line);
  return -1;
 }
 line[i] = 0;
 var = line;
 val = &line[i+1];
 mystrip(var);
 mystrip(val);


 if (strlen(var) == 0 || (strlen(val) == 0 && strncasecmp(var, "bind", 4) != 0)) {
  lprintf("config_readsect: something's empty: \"%s\" = \"%s\"\n", var, val);
  return -1;;
 }


 *rvar = var;
 *rval = val;
 return 1;
}
