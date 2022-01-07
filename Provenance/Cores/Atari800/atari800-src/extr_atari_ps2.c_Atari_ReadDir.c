
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hour; int month; int day; int year; int sec; } ;
struct TYPE_5__ {int attrFile; TYPE_1__ _modify; scalar_t__ fileSizeByte; int name; } ;
typedef TYPE_2__ mcTable ;


 int FALSE ;
 int MC_ATTR_SUBDIR ;
 int MC_ATTR_WRITEABLE ;
 int TRUE ;
 int Util_catpath (char*,int ,int ) ;
 scalar_t__ dir_i ;
 scalar_t__ dir_n ;
 int dir_path ;
 TYPE_2__* mcDir ;
 int sprintf (char*,char*,int,int,int,int,int,char) ;
 int strcpy (char*,int ) ;

int Atari_ReadDir(char *fullpath, char *filename, int *isdir,
                  int *readonly, int *size, char *timetext)
{
 const mcTable *p;
 if (dir_i >= dir_n)
  return FALSE;
 p = mcDir + dir_i;
 if (fullpath != ((void*)0))
  Util_catpath(fullpath, dir_path, p->name);
 if (filename != ((void*)0))
  strcpy(filename, p->name);
 if (isdir != ((void*)0))
  *isdir = (p->attrFile & MC_ATTR_SUBDIR) ? TRUE : FALSE;
 if (readonly != ((void*)0))
  *readonly = (p->attrFile & MC_ATTR_WRITEABLE) ? FALSE : TRUE;
 if (size != ((void*)0))
  *size = (int) (p->fileSizeByte);
 if (timetext != ((void*)0)) {

  int hour = p->_modify.hour;
  char ampm = 'a';
  if (hour >= 12) {
   hour -= 12;
   ampm = 'p';
  }
  if (hour == 0)
   hour = 12;
  sprintf(timetext, "%2d-%02d-%02d %2d:%02d%c",
   p->_modify.month, p->_modify.day, p->_modify.year % 100, hour, p->_modify.sec, ampm);
 }
 dir_i++;
 return TRUE;
}
