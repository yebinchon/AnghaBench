
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status; int xpos; int ypos; int width; int height; int dirty; } ;


 scalar_t__ FMV_EOF ;
 int MAX_VIDEO_HANDLES ;
 TYPE_1__* cinTable ;
 int qtrue ;

void CIN_SetExtents (int handle, int x, int y, int w, int h) {
 if (handle < 0 || handle>= MAX_VIDEO_HANDLES || cinTable[handle].status == FMV_EOF) return;
 cinTable[handle].xpos = x;
 cinTable[handle].ypos = y;
 cinTable[handle].width = w;
 cinTable[handle].height = h;
 cinTable[handle].dirty = qtrue;
}
