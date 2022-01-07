
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int c_lflag; } ;
typedef TYPE_1__ struct_term ;


 int ECHO ;
 int FALSE ;
 int TCGETA ;
 int TCSAFLUSH ;
 int TCSANOW ;
 int TCSETA ;
 int TRUE ;
 int ioctl (int,int ,TYPE_1__*) ;
 int tcgetattr (int,TYPE_1__*) ;
 int tcsetattr (int,int ,TYPE_1__*) ;

__attribute__((used)) static bool ttyecho(bool enable, int fd)
{




  if(!enable) {
    (void)fd;
    return FALSE;

    return TRUE;
  }







  return FALSE;

  return TRUE;
}
