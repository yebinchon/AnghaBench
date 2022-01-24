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
struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {int* crop; TYPE_1__ geometry; } ;
typedef  TYPE_2__ hb_title_t ;
typedef  int gint ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 

void
FUNC6(GhbValue *settings, const hb_title_t * title)
{
    gboolean autocrop, loosecrop;
    gint crop[4] = {0,};

    autocrop = FUNC2(settings, "PictureAutoCrop");
    // "PictureLooseCrop" is a flag that says we prefer to crop extra to
    // satisfy alignment constraints rather than scaling to satisfy them.
    loosecrop = FUNC2(settings, "PictureLooseCrop");

    if (autocrop)
    {
        crop[0] = title->crop[0];
        crop[1] = title->crop[1];
        crop[2] = title->crop[2];
        crop[3] = title->crop[3];
    }
    else
    {
        crop[0] = FUNC3(settings, "PictureTopCrop");
        crop[1] = FUNC3(settings, "PictureBottomCrop");
        crop[2] = FUNC3(settings, "PictureLeftCrop");
        crop[3] = FUNC3(settings, "PictureRightCrop");
    }
    if (loosecrop)
    {
        gint need1, need2;
        gint crop_width, crop_height, width, height;
        gint mod;

        mod = FUNC5(settings, "PictureModulus");
        if (mod <= 0)
            mod = 16;

        // Adjust the cropping to accomplish the desired width and height
        crop_width = title->geometry.width - crop[2] - crop[3];
        crop_height = title->geometry.height - crop[0] - crop[1];
        width = FUNC1(crop_width, mod);
        height = FUNC1(crop_height, mod);

        need1 = FUNC0((crop_height - height) / 2);
        need2 = crop_height - height - need1;
        crop[0] += need1;
        crop[1] += need2;
        need1 = FUNC0((crop_width - width) / 2);
        need2 = crop_width - width - need1;
        crop[2] += need1;
        crop[3] += need2;
    }
    // Prevent crop from creating too small an image
    if (title->geometry.height - crop[0] -crop[1] < 16)
    {
        crop[0] = title->geometry.height - crop[1] - 16;
        if (crop[0] < 0)
        {
            crop[1] += crop[0];
            crop[0] = 0;
        }
    }
    if (title->geometry.width - crop[2] - crop[3] < 16)
    {
        crop[2] = title->geometry.width - crop[3] - 16;
        if (crop[2] < 0)
        {
            crop[3] += crop[2];
            crop[2] = 0;
        }
    }
    FUNC4(settings, "PictureTopCrop", crop[0]);
    FUNC4(settings, "PictureBottomCrop", crop[1]);
    FUNC4(settings, "PictureLeftCrop", crop[2]);
    FUNC4(settings, "PictureRightCrop", crop[3]);
}