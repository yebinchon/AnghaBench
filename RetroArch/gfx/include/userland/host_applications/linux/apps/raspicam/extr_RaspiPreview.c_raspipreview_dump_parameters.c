
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; int width; int height; } ;
struct TYPE_5__ {int opacity; TYPE_1__ previewWindow; scalar_t__ wantFullScreenPreview; scalar_t__ wantPreview; } ;
typedef TYPE_2__ RASPIPREVIEW_PARAMETERS ;


 int fprintf (int ,char*,...) ;
 int stderr ;

void raspipreview_dump_parameters(RASPIPREVIEW_PARAMETERS *state)
{
   fprintf(stderr, "Preview %s, Full screen %s\n", state->wantPreview ? "Yes" : "No",
           state->wantFullScreenPreview ? "Yes" : "No");

   fprintf(stderr, "Preview window %d,%d,%d,%d\nOpacity %d\n", state->previewWindow.x,
           state->previewWindow.y, state->previewWindow.width,
           state->previewWindow.height, state->opacity);
}
