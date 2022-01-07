
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pixel_t ;
struct TYPE_5__ {int (* DisplayMessage ) (TYPE_1__*,int *,int,int) ;} ;
struct TYPE_4__ {scalar_t__ timeleft; scalar_t__ hidden; int message; } ;


 TYPE_3__* OSD ;
 int OSDMSG_COUNT ;
 int free (int ) ;
 TYPE_1__* osdmessages ;
 int stub1 (TYPE_1__*,int *,int,int) ;

int OSDDisplayMessages(pixel_t * buffer, int w, int h)
{
   int i = 0;
   int somethingnew = 0;

   if (OSD == ((void*)0)) return somethingnew;

   for(i = 0;i < OSDMSG_COUNT;i++)
      if (osdmessages[i].timeleft > 0)
      {
         if (osdmessages[i].hidden == 0)
         {
            somethingnew = 1;
            OSD->DisplayMessage(osdmessages + i, buffer, w, h);
         }
         osdmessages[i].timeleft--;
         if (osdmessages[i].timeleft == 0) free(osdmessages[i].message);
      }

   return somethingnew;
}
