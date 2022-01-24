#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  content_img; int /*<<< orphan*/  content_label; } ;
typedef  TYPE_1__ menu_thumbnail_path_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(menu_thumbnail_path_data_t *path_data)
{
   char *scrub_char_pointer = NULL;
   
   /* Copy source label string */
   FUNC1(path_data->content_img,
         path_data->content_label, sizeof(path_data->content_img));
   
   /* Scrub characters that are not cross-platform and/or violate the
    * No-Intro filename standard:
    * http://datomatic.no-intro.org/stuff/The%20Official%20No-Intro%20Convention%20(20071030).zip
    * Replace these characters in the entry name with underscores */
   while((scrub_char_pointer = FUNC2(path_data->content_img, "&*/:`\"<>?\\|")))
      *scrub_char_pointer = '_';
   
   /* Add PNG extension */
   FUNC0(path_data->content_img, ".png", sizeof(path_data->content_img));
}