#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int x; int y; int width; int height; } ;
struct TYPE_5__ {int opacity; TYPE_1__ previewWindow; scalar_t__ wantFullScreenPreview; scalar_t__ wantPreview; } ;
typedef  TYPE_2__ RASPIPREVIEW_PARAMETERS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1(RASPIPREVIEW_PARAMETERS *state)
{
   FUNC0(stderr, "Preview %s, Full screen %s\n", state->wantPreview ? "Yes" : "No",
           state->wantFullScreenPreview ? "Yes" : "No");

   FUNC0(stderr, "Preview window %d,%d,%d,%d\nOpacity %d\n", state->previewWindow.x,
           state->previewWindow.y, state->previewWindow.width,
           state->previewWindow.height, state->opacity);
}