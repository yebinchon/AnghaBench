#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ nextFrameMethod; char* description; } ;
struct TYPE_5__ {int width; int height; int quality; scalar_t__ enable; } ;
struct TYPE_6__ {int quality; int timeout; int timelapse; char* linkname; scalar_t__ frameNextMethod; int numExifTags; char** exifTags; int /*<<< orphan*/  camera_parameters; int /*<<< orphan*/  preview_parameters; scalar_t__ enableExifTags; scalar_t__ fullResPreview; TYPE_1__ thumbnailConfig; scalar_t__ wantRAW; int /*<<< orphan*/  common_settings; } ;
typedef  TYPE_2__ RASPISTILL_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* next_frame_description ; 
 int next_frame_description_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(RASPISTILL_STATE *state)
{
   int i;

   if (!state)
   {
      FUNC4(0);
      return;
   }

   FUNC2(&state->common_settings);

   FUNC0(stderr, "Quality %d, Raw %s\n", state->quality, state->wantRAW ? "yes" : "no");
   FUNC0(stderr, "Thumbnail enabled %s, width %d, height %d, quality %d\n",
           state->thumbnailConfig.enable ? "Yes":"No", state->thumbnailConfig.width,
           state->thumbnailConfig.height, state->thumbnailConfig.quality);

   FUNC0(stderr, "Time delay %d, Timelapse %d\n", state->timeout, state->timelapse);
   FUNC0(stderr, "Link to latest frame enabled ");
   if (state->linkname)
   {
      FUNC0(stderr, " yes, -> %s\n", state->linkname);
   }
   else
   {
      FUNC0(stderr, " no\n");
   }
   FUNC0(stderr, "Full resolution preview %s\n", state->fullResPreview ? "Yes": "No");

   FUNC0(stderr, "Capture method : ");
   for (i=0; i<next_frame_description_size; i++)
   {
      if (state->frameNextMethod == next_frame_description[i].nextFrameMethod)
         FUNC0(stderr, "%s", next_frame_description[i].description);
   }
   FUNC0(stderr, "\n\n");

   if (state->enableExifTags)
   {
      if (state->numExifTags)
      {
         FUNC0(stderr, "User supplied EXIF tags :\n");

         for (i=0; i<state->numExifTags; i++)
         {
            FUNC0(stderr, "%s", state->exifTags[i]);
            if (i != state->numExifTags-1)
               FUNC0(stderr, ",");
         }
         FUNC0(stderr, "\n\n");
      }
   }
   else
      FUNC0(stderr, "EXIF tags disabled\n");

   FUNC3(&state->preview_parameters);
   FUNC1(&state->camera_parameters);
}