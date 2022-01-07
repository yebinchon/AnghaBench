
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msg ;
struct TYPE_2__ {int (* fMessage ) (char*,int) ;} ;


 int FILENAME_MAX ;
 TYPE_1__* UI_driver ;
 int snprintf (char*,int,char const*,char const*) ;
 int stub1 (char*,int) ;

__attribute__((used)) static void FilenameMessage(const char *format, const char *filename)
{
 char msg[FILENAME_MAX + 30];
 snprintf(msg, sizeof(msg), format, filename);
 UI_driver->fMessage(msg, 1);
}
