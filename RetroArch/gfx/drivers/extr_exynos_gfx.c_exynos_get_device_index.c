
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* drmVersionPtr ;
typedef int buf ;
struct TYPE_4__ {int name; } ;


 int O_RDWR ;
 int close (int) ;
 int drmFreeVersion (TYPE_1__*) ;
 TYPE_1__* drmGetVersion (int) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ string_is_equal (int ,char*) ;

__attribute__((used)) static int exynos_get_device_index(void)
{
   drmVersionPtr ver;
   char buf[32] = {0};
   int index = 0;
   bool found = 0;

   while (!found)
   {
      int fd;

      snprintf(buf, sizeof(buf), "/dev/dri/card%d", index);

      fd = open(buf, O_RDWR);
      if (fd < 0) break;

      ver = drmGetVersion(fd);

      if (string_is_equal(ver->name, "exynos"))
         found = 1;
      else
         ++index;

      drmFreeVersion(ver);
      close(fd);
   }

   if (!found)
      return -1;
   return index;
}
