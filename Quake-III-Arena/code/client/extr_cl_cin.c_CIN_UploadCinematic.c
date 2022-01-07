
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int playonwalls; scalar_t__ dirty; int buf; } ;
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {int (* UploadCinematic ) (int,int,int,int,int ,int,scalar_t__) ;} ;


 int MAX_VIDEO_HANDLES ;
 TYPE_3__* cinTable ;
 TYPE_2__* cl_inGameVideo ;
 scalar_t__ qfalse ;
 TYPE_1__ re ;
 int stub1 (int,int,int,int,int ,int,scalar_t__) ;

void CIN_UploadCinematic(int handle) {
 if (handle >= 0 && handle < MAX_VIDEO_HANDLES) {
  if (!cinTable[handle].buf) {
   return;
  }
  if (cinTable[handle].playonwalls <= 0 && cinTable[handle].dirty) {
   if (cinTable[handle].playonwalls == 0) {
    cinTable[handle].playonwalls = -1;
   } else {
    if (cinTable[handle].playonwalls == -1) {
     cinTable[handle].playonwalls = -2;
    } else {
     cinTable[handle].dirty = qfalse;
    }
   }
  }
  re.UploadCinematic( 256, 256, 256, 256, cinTable[handle].buf, handle, cinTable[handle].dirty);
  if (cl_inGameVideo->integer == 0 && cinTable[handle].playonwalls == 1) {
   cinTable[handle].playonwalls--;
  }
 }
}
