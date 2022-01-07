
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {char* data; struct curl_slist* next; } ;
struct GlobalConfig {scalar_t__ showerror; } ;
typedef int global ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 struct curl_slist* GetLoadedModulePaths () ;
 int SIGPIPE ;
 int SIG_IGN ;
 int configure_terminal () ;
 int curl_slist_free_all (struct curl_slist*) ;
 int * getenv (char*) ;
 int main_checkfds () ;
 int main_free (struct GlobalConfig*) ;
 scalar_t__ main_init (struct GlobalConfig*) ;
 int memory_tracking_init () ;
 int memset (struct GlobalConfig*,int ,int) ;
 scalar_t__ operate (struct GlobalConfig*,int,char**) ;
 int printf (char*,char*) ;
 int restore_terminal () ;
 int signal (int ,int ) ;
 int strcmp (char*,char*) ;
 int tool_pressanykey () ;
 int vms_show ;
 int vms_special_exit (scalar_t__,int ) ;

int main(int argc, char *argv[])
{
  CURLcode result = CURLE_OK;
  struct GlobalConfig global;
  memset(&global, 0, sizeof(global));


  configure_terminal();

  main_checkfds();






  memory_tracking_init();



  result = main_init(&global);
  if(!result) {

    result = operate(&global, argc, argv);







    main_free(&global);
  }


  restore_terminal();
  return (int)result;

}
