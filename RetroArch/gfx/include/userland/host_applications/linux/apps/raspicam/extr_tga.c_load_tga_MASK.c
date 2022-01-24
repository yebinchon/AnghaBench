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
struct TYPE_2__ {int bpp; int width; int height; } ;
struct tga_header {scalar_t__ image_type; scalar_t__ id_length; TYPE_1__ image_info; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned char* FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct tga_header*) ; 
 scalar_t__ tga_type_true_color ; 

unsigned char *FUNC7(const char *filename, struct tga_header *header) {
    unsigned char *image = NULL;
    FILE *fp = FUNC1(filename, "r");
    if (fp) {
        if(FUNC6(fp, header) == 0) {
            if (header->image_type == tga_type_true_color &&
                (header->image_info.bpp == 24 ||
                header->image_info.bpp == 32)) {
                int buflen = header->image_info.width *
                   header->image_info.height * (header->image_info.bpp / 8);
                image = FUNC5(buflen);
                if (image) {
                    if (header->id_length)
                        FUNC4(fp, SEEK_CUR, header->id_length);

                    if (FUNC2(image, 1, buflen, fp) != buflen) {
                        FUNC3(image);
                        image = NULL;
                    }
                }
            }
        }
        FUNC0(fp);
    }
    return image;
}