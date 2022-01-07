
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;


 int TRUE ;
 int online ;

void handler(int sig) {
 switch (sig) {
 case 129:
  online = TRUE;
  break;
 case 128:
  online = FALSE;
  break;
 }
}
