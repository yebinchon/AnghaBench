
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* includepath; } ;
typedef TYPE_1__ source_t ;


 int MAX_PATH ;
 int PATHSEPERATOR_STR ;
 int strcat (char*,int ) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int ) ;

void PC_SetIncludePath(source_t *source, char *path)
{
 strncpy(source->includepath, path, MAX_PATH);

 if (source->includepath[strlen(source->includepath)-1] != '\\' &&
  source->includepath[strlen(source->includepath)-1] != '/')
 {
  strcat(source->includepath, PATHSEPERATOR_STR);
 }
}
