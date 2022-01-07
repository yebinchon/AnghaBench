
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdata {char* text; int counter; } ;
typedef int curl_lock_data ;
typedef int curl_lock_access ;
typedef int CURL ;





 int fprintf (int ,char*,int) ;
 scalar_t__* locks ;
 int printf (char*,char const*,...) ;
 int stderr ;

__attribute__((used)) static void my_lock(CURL *handle, curl_lock_data data,
                    curl_lock_access laccess, void *useptr)
{
  const char *what;
  struct userdata *user = (struct userdata *)useptr;
  int locknum;

  (void)handle;
  (void)laccess;

  switch(data) {
    case 128:
      what = "share";
      locknum = 0;
      break;
    case 129:
      what = "dns";
      locknum = 1;
      break;
    case 130:
      what = "cookie";
      locknum = 2;
      break;
    default:
      fprintf(stderr, "lock: no such data: %d\n", (int)data);
      return;
  }


  if(locks[locknum]) {
    printf("lock: double locked %s\n", what);
    return;
  }
  locks[locknum]++;

  printf("lock:   %-6s [%s]: %d\n", what, user->text, user->counter);
  user->counter++;
}
