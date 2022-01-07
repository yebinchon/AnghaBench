
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int input; } ;
typedef TYPE_1__ GlobalInfo ;


 long EOF ;
 long fscanf (int ,char*,char*,int*) ;
 int new_conn (char*,TYPE_1__*) ;

__attribute__((used)) static void fifo_cb(GlobalInfo* g, int revents)
{
  char s[1024];
  long int rv = 0;
  int n = 0;

  do {
    s[0]='\0';
    rv = fscanf(g->input, "%1023s%n", s, &n);
    s[n]='\0';
    if(n && s[0]) {
      new_conn(s, g);
    }
    else
      break;
  } while(rv != EOF);
}
