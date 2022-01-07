
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int resize; int egl; } ;
typedef TYPE_1__ mali_ctx_data_t ;


 int O_RDWR ;
 int VT_ACTIVATE ;
 int close (int) ;
 int egl_destroy (int *) ;
 int free (TYPE_1__*) ;
 int ioctl (int,int ,int) ;
 int open (char*,int ) ;
 int system (char*) ;

__attribute__((used)) static void gfx_ctx_mali_fbdev_destroy(void *data)
{
   int fd;
   mali_ctx_data_t *mali = (mali_ctx_data_t*)data;

   if (mali)
   {




       mali->resize = 0;
       free(mali);
   }


   fd = open("/dev/tty", O_RDWR);
   ioctl(fd, VT_ACTIVATE, 5);
   ioctl(fd, VT_ACTIVATE, 1);
   close(fd);

   system("setterm -cursor on");
}
