#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * left_thumbnail_file_path; int /*<<< orphan*/  left_thumbnail; int /*<<< orphan*/ * thumbnail_file_path; int /*<<< orphan*/  thumbnail; } ;
typedef  TYPE_1__ stripes_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  menu_display_handle_left_thumbnail_upload ; 
 int /*<<< orphan*/  menu_display_handle_thumbnail_upload ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *data)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;
   bool supports_rgba        = FUNC4();
   if (!stripes)
      return;

   if (!(FUNC2(stripes->thumbnail_file_path)))
      {
         if (FUNC1(stripes->thumbnail_file_path))
            FUNC3(stripes->thumbnail_file_path,
                  supports_rgba, 0,
                  menu_display_handle_thumbnail_upload, NULL);
         else
            FUNC5(&stripes->thumbnail);

         FUNC0(stripes->thumbnail_file_path);
         stripes->thumbnail_file_path = NULL;
      }

   if (!(FUNC2(stripes->left_thumbnail_file_path)))
      {
         if (FUNC1(stripes->left_thumbnail_file_path))
            FUNC3(stripes->left_thumbnail_file_path,
                  supports_rgba, 0,
                  menu_display_handle_left_thumbnail_upload, NULL);
         else
            FUNC5(&stripes->left_thumbnail);

         FUNC0(stripes->left_thumbnail_file_path);
         stripes->left_thumbnail_file_path = NULL;
      }
}