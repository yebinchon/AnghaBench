
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int perlinuxjoy_struct ;
struct TYPE_4__ {int gl_pathc; int * gl_pathv; } ;
typedef TYPE_1__ glob_t ;


 int LinuxJoyInit (scalar_t__,int ) ;
 int glob (char*,int ,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int joycount ;
 scalar_t__ joysticks ;
 scalar_t__ malloc (int) ;

int PERLinuxJoyInit(void)
{
   int i;
   int fd;
   glob_t globbuf;

   glob("/dev/input/js*", 0, ((void*)0), &globbuf);

   joycount = globbuf.gl_pathc;
   joysticks = malloc(sizeof(perlinuxjoy_struct) * joycount);

   for(i = 0;i < globbuf.gl_pathc;i++)
      LinuxJoyInit(joysticks + i, globbuf.gl_pathv[i]);

   globfree(&globbuf);

   return 0;
}
