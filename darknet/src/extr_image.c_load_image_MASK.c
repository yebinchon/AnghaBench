#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int h; int w; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 TYPE_1__ FUNC1 (char*,int) ; 
 TYPE_1__ FUNC2 (char*,int) ; 
 TYPE_1__ FUNC3 (TYPE_1__,int,int) ; 

image FUNC4(char *filename, int w, int h, int c)
{
#ifdef OPENCV
    image out = load_image_cv(filename, c);
#else
    image out = FUNC2(filename, c);
#endif

    if((h && w) && (h != out.h || w != out.w)){
        image resized = FUNC3(out, w, h);
        FUNC0(out);
        out = resized;
    }
    return out;
}