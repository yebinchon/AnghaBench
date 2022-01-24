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
struct TYPE_3__ {int w; int h; int c; int* data; } ;
typedef  TYPE_1__ image ;
typedef  scalar_t__ IMTYPE ;

/* Variables and functions */
 scalar_t__ BMP ; 
 scalar_t__ JPG ; 
 scalar_t__ PNG ; 
 scalar_t__ TGA ; 
 unsigned char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*) ; 
 int FUNC4 (char*,int,int,int,unsigned char*) ; 
 int FUNC5 (char*,int,int,int,unsigned char*,int) ; 
 int FUNC6 (char*,int,int,int,unsigned char*,int) ; 
 int FUNC7 (char*,int,int,int,unsigned char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC8(image im, const char *name, IMTYPE f, int quality)
{
    char buff[256];
    //sprintf(buff, "%s (%d)", name, windows);
    if(f == PNG)       FUNC3(buff, "%s.png", name);
    else if (f == BMP) FUNC3(buff, "%s.bmp", name);
    else if (f == TGA) FUNC3(buff, "%s.tga", name);
    else if (f == JPG) FUNC3(buff, "%s.jpg", name);
    else               FUNC3(buff, "%s.png", name);
    unsigned char *data = FUNC0(im.w*im.h*im.c, sizeof(char));
    int i,k;
    for(k = 0; k < im.c; ++k){
        for(i = 0; i < im.w*im.h; ++i){
            data[i*im.c+k] = (unsigned char) (255*im.data[i + k*im.w*im.h]);
        }
    }
    int success = 0;
    if(f == PNG)       success = FUNC6(buff, im.w, im.h, im.c, data, im.w*im.c);
    else if (f == BMP) success = FUNC4(buff, im.w, im.h, im.c, data);
    else if (f == TGA) success = FUNC7(buff, im.w, im.h, im.c, data);
    else if (f == JPG) success = FUNC5(buff, im.w, im.h, im.c, data, quality);
    FUNC2(data);
    if(!success) FUNC1(stderr, "Failed to write image %s\n", buff);
}