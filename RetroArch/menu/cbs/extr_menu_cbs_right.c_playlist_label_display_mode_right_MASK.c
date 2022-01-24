#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  playlist_t ;
typedef  enum playlist_label_display_mode { ____Placeholder_playlist_label_display_mode } playlist_label_display_mode ;

/* Variables and functions */
 int LABEL_DISPLAY_MODE_DEFAULT ; 
 int LABEL_DISPLAY_MODE_KEEP_REGION_AND_DISC_INDEX ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(unsigned type, const char *label,
      bool wraparound)
{
   enum playlist_label_display_mode label_display_mode;
   playlist_t *playlist             = FUNC0();

   if (!playlist)
      return -1;

   label_display_mode = FUNC1(playlist);

   if (label_display_mode != LABEL_DISPLAY_MODE_KEEP_REGION_AND_DISC_INDEX)
      label_display_mode = (enum playlist_label_display_mode)((int)label_display_mode + 1);
   else if (wraparound)
      label_display_mode = LABEL_DISPLAY_MODE_DEFAULT;

   FUNC2(playlist, label_display_mode);
   FUNC3(playlist);

   return 0;
}