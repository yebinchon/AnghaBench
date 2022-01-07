
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int flags; } ;
struct stat {int st_mode; } ;
struct menu {struct menu* next; struct menu* parent; struct menu* list; struct symbol* sym; } ;
struct TYPE_2__ {struct menu* list; } ;
typedef int FILE ;


 int PATH_MAX ;
 int SYMBOL_CHOICE ;
 int SYMBOL_WRITE ;
 scalar_t__ S_ISDIR (int ) ;
 int _ (char*) ;
 int conf_get_changed () ;
 char* conf_get_configname () ;
 int conf_message (int ,char*) ;
 int conf_write_heading (int *,int *,int *) ;
 int conf_write_symbol (int *,struct symbol*,int *,int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char const*) ;
 char* getenv (char*) ;
 scalar_t__ getpid () ;
 int kconfig_printer_cb ;
 int memcpy (char*,char const*,int) ;
 char* menu_get_prompt (struct menu*) ;
 int menu_is_visible (struct menu*) ;
 scalar_t__ rename (char*,char*) ;
 TYPE_1__ rootmenu ;
 int sprintf (char*,char*,char*,...) ;
 int stat (char const*,struct stat*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 char* strrchr (char const*,char) ;
 int sym_calc_value (struct symbol*) ;
 int sym_clear_all_valid () ;
 int sym_set_change_count (int ) ;

int conf_write(const char *name)
{
 FILE *out;
 struct symbol *sym;
 struct menu *menu;
 const char *basename;
 const char *str;
 char dirname[PATH_MAX+1], tmpname[PATH_MAX+1], newname[PATH_MAX+1];
 char *env;

 dirname[0] = 0;
 if (name && name[0]) {
  struct stat st;
  char *slash;

  if (!stat(name, &st) && S_ISDIR(st.st_mode)) {
   strcpy(dirname, name);
   strcat(dirname, "/");
   basename = conf_get_configname();
  } else if ((slash = strrchr(name, '/'))) {
   int size = slash - name + 1;
   memcpy(dirname, name, size);
   dirname[size] = 0;
   if (slash[1])
    basename = slash + 1;
   else
    basename = conf_get_configname();
  } else
   basename = name;
 } else
  basename = conf_get_configname();

 sprintf(newname, "%s%s", dirname, basename);
 env = getenv("KCONFIG_OVERWRITECONFIG");
 if (!env || !*env) {
  sprintf(tmpname, "%s.tmpconfig.%d", newname, (int)getpid());
  out = fopen(tmpname, "w");
 } else {
  *tmpname = 0;
  out = fopen(newname, "w");
 }
 if (!out)
  return 1;

 conf_write_heading(out, &kconfig_printer_cb, ((void*)0));

 if (!conf_get_changed())
  sym_clear_all_valid();

 menu = rootmenu.list;
 while (menu) {
  sym = menu->sym;
  if (!sym) {
   if (!menu_is_visible(menu))
    goto next;
   str = menu_get_prompt(menu);
   fprintf(out, "\n"
         "#\n"
         "# %s\n"
         "#\n", str);
  } else if (!(sym->flags & SYMBOL_CHOICE)) {
   sym_calc_value(sym);
   if (!(sym->flags & SYMBOL_WRITE))
    goto next;
   sym->flags &= ~SYMBOL_WRITE;

   conf_write_symbol(out, sym, &kconfig_printer_cb, ((void*)0));
  }

next:
  if (menu->list) {
   menu = menu->list;
   continue;
  }
  if (menu->next)
   menu = menu->next;
  else while ((menu = menu->parent)) {
   if (menu->next) {
    menu = menu->next;
    break;
   }
  }
 }
 fclose(out);

 if (*tmpname) {
  strcat(dirname, basename);
  strcat(dirname, ".old");
  rename(newname, dirname);
  if (rename(tmpname, newname))
   return 1;
 }

 conf_message(_("configuration written to %s"), newname);

 sym_set_change_count(0);

 return 0;
}
