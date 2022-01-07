
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdata {char* text; int counter; } ;
typedef int curl_lock_data ;
typedef int curl_lock_access ;
typedef int CURL ;






 int fprintf (int ,char*,int) ;
 int printf (char*,char const*,char*,int) ;
 int stderr ;

__attribute__((used)) static void my_lock(CURL *handle, curl_lock_data data,
                    curl_lock_access laccess, void *useptr)
{
  const char *what;
  struct userdata *user = (struct userdata *)useptr;

  (void)handle;
  (void)laccess;

  switch(data) {
    case 129:
      what = "share";
      break;
    case 130:
      what = "dns";
      break;
    case 131:
      what = "cookie";
      break;
    case 128:
      what = "ssl_session";
      break;
    default:
      fprintf(stderr, "lock: no such data: %d\n", (int)data);
      return;
  }
  printf("lock:   %-6s [%s]: %d\n", what, user->text, user->counter);
  user->counter++;
}
