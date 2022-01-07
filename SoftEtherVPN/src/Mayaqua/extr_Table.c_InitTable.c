
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tmp ;
typedef int table_name ;
struct TYPE_9__ {int Name; int * LcidList; int LangList; } ;
struct TYPE_8__ {int Name; } ;
typedef int LIST ;
typedef TYPE_1__ LANGLIST ;


 int Alert (char*,int *) ;
 int Copy (TYPE_2__*,TYPE_1__*,int) ;
 int Format (char*,int,char*,int ) ;
 int FreeLangList (int *) ;
 TYPE_1__* GetBestLangByName (int *,char*) ;
 TYPE_1__* GetBestLangForCurrentEnvironment (int *) ;
 scalar_t__ LoadLangConfigCurrentDir (char*,int) ;
 int * LoadLangList () ;
 int LoadTable (char*) ;
 int MAX_SIZE ;
 scalar_t__ MayaquaIsMinimalMode () ;
 int SaveLangConfigCurrentDir (int ) ;
 TYPE_2__ current_lang ;
 TYPE_2__ current_os_lang ;
 int exit (int) ;

void InitTable()
{
 LIST *o;
 char tmp[MAX_SIZE];
 LANGLIST *e = ((void*)0);
 LANGLIST *os_lang = ((void*)0);
 char table_name[MAX_SIZE];
 if (MayaquaIsMinimalMode())
 {

  return;
 }

 o = LoadLangList();
 if (o == ((void*)0))
 {
LABEL_FATAL_ERROR:
  Alert("Fatal Error: The file \"hamcore.se2\" is missing or broken.\r\nPlease check hamcore.se2.\r\n\r\n(First, reboot the computer. If this problem occurs again, please reinstall VPN software files.)", ((void*)0));
  exit(-1);
  return;
 }


 if (LoadLangConfigCurrentDir(tmp, sizeof(tmp)))
 {
  e = GetBestLangByName(o, tmp);
 }

 os_lang = GetBestLangForCurrentEnvironment(o);

 if (e == ((void*)0))
 {
  e = os_lang;
 }

 if (e == ((void*)0))
 {
  goto LABEL_FATAL_ERROR;
 }

 SaveLangConfigCurrentDir(e->Name);

 Copy(&current_lang, e, sizeof(LANGLIST));
 Copy(&current_os_lang, os_lang, sizeof(LANGLIST));

 current_lang.LangList = current_lang.LcidList = ((void*)0);
 current_os_lang.LangList = current_os_lang.LcidList = ((void*)0);


 Format(table_name, sizeof(table_name), "|strtable_%s.stb", current_lang.Name);
 if (LoadTable(table_name) == 0)
 {
  goto LABEL_FATAL_ERROR;
 }

 FreeLangList(o);
}
