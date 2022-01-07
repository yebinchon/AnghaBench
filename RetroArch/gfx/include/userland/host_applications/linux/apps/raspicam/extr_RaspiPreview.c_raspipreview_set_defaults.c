
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {int wantPreview; int wantFullScreenPreview; int opacity; int * preview_component; TYPE_1__ previewWindow; } ;
typedef TYPE_2__ RASPIPREVIEW_PARAMETERS ;



void raspipreview_set_defaults(RASPIPREVIEW_PARAMETERS *state)
{
   state->wantPreview = 1;
   state->wantFullScreenPreview = 1;
   state->opacity = 255;
   state->previewWindow.x = 0;
   state->previewWindow.y = 0;
   state->previewWindow.width = 1024;
   state->previewWindow.height = 768;
   state->preview_component = ((void*)0);
}
