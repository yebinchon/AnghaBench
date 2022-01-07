
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int c_lflag; int c_iflag; scalar_t__* c_cc; } ;


 int ECHO ;
 int ICANON ;
 int ICRNL ;
 int IGNCR ;
 int INLCR ;
 int ISIG ;
 int ISTRIP ;
 int IXOFF ;
 int IXON ;
 int KDGKBMODE ;
 int TCSAFLUSH ;
 size_t VMIN ;
 size_t VTIME ;
 scalar_t__ ioctl (int ,int ,int*) ;
 TYPE_1__ newTerm ;
 int oldKbmd ;
 TYPE_1__ oldTerm ;
 scalar_t__ tcgetattr (int ,TYPE_1__*) ;
 scalar_t__ tcsetattr (int ,int ,TYPE_1__*) ;

bool linux_terminal_init(void)
{
   if (oldKbmd != 0xffff)
      return 0;

   if (tcgetattr(0, &oldTerm) < 0)
      return 0;

   newTerm = oldTerm;
   newTerm.c_lflag &= ~(ECHO | ICANON | ISIG);
   newTerm.c_iflag &= ~(ISTRIP | IGNCR | ICRNL | INLCR | IXOFF | IXON);
   newTerm.c_cc[VMIN] = 0;
   newTerm.c_cc[VTIME] = 0;


   if (ioctl(0, KDGKBMODE, &oldKbmd) < 0)
      return 0;

   if (tcsetattr(0, TCSAFLUSH, &newTerm) < 0)
      return 0;

   return 1;
}
