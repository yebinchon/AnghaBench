
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_joypad {char saved_data; int fd; char saved_control; int ident; } ;


 int PPRELEASE ;
 int PPWDATA ;
 int RARCH_ERR (char*,int ) ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,...) ;

__attribute__((used)) static void parport_free_pad(struct parport_joypad *pad)
{
   char data = pad->saved_data;

   if (ioctl(pad->fd, PPWDATA, &data) < 0)
      RARCH_ERR("[Joypad]: Failed to restore original data register on %s\n", pad->ident);

   data = pad->saved_control;
   if (ioctl(pad->fd, PPWDATA, &data) < 0)
      RARCH_ERR("[Joypad]: Failed to restore original control register on %s\n", pad->ident);

   if (ioctl(pad->fd, PPRELEASE) < 0)
      RARCH_ERR("[Joypad]: Failed to release parallel port %s\n", pad->ident);

   close(pad->fd);
   pad->fd = -1;
}
