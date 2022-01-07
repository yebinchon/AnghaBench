
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {char* name; int * (* getInterface ) () ;} ;
struct TYPE_3__ {scalar_t__ argvMagic; int argc; char** argv; } ;
typedef int DISC_INTERFACE ;


 scalar_t__ ARGV_MAGIC ;
 int DEFAULT_SECTORS_PAGE ;
 int PATH_MAX ;
 TYPE_2__* _FAT_disc_interfaces ;
 TYPE_1__* __system_argv ;
 int chdir (char*) ;
 scalar_t__ fatMount (char*,int const*,int ,int ,int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncasecmp (char*,char*,int ) ;
 char* strrchr (char*,char) ;
 int * stub1 () ;

bool fatInit (uint32_t cacheSize, bool setAsDefaultDevice)
{
 int i;
 int defaultDevice = -1;
 const DISC_INTERFACE *disc;

 for (i = 0;
  _FAT_disc_interfaces[i].name != ((void*)0) && _FAT_disc_interfaces[i].getInterface != ((void*)0);
  i++)
 {
  disc = _FAT_disc_interfaces[i].getInterface();
  if (!disc)
   continue;

      if (fatMount (_FAT_disc_interfaces[i].name, disc, 0, cacheSize, DEFAULT_SECTORS_PAGE))
      {

         if (defaultDevice < 0)
            defaultDevice = i;
      }
 }


 if (defaultDevice < 0)
  return 0;

 if (setAsDefaultDevice)
   {
      char filePath[PATH_MAX];
      strcpy (filePath, _FAT_disc_interfaces[defaultDevice].name);
      strcat (filePath, ":/");
      chdir (filePath);
   }

 return 1;
}
