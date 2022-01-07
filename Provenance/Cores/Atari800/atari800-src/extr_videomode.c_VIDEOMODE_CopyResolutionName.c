
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; } ;


 TYPE_1__* resolutions ;
 int snprintf (char*,unsigned int,char*,int,int) ;

void VIDEOMODE_CopyResolutionName(unsigned int res_id, char *target, unsigned int size)
{
 snprintf(target, size, "%ix%i", resolutions[res_id].width, resolutions[res_id].height);
}
