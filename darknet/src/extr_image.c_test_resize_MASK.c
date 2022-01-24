#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int w; int h; int c; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 TYPE_1__ FUNC3 (TYPE_1__) ; 
 TYPE_1__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 float FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,float,...) ; 
 float FUNC7 (float) ; 
 float FUNC8 (float,float) ; 
 TYPE_1__ FUNC9 (TYPE_1__,int /*<<< orphan*/ ,double,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__,char*,int) ; 

void FUNC11(char *filename)
{
    image im = FUNC4(filename, 0,0, 3);
    float mag = FUNC5(im.data, im.w*im.h*im.c);
    FUNC6("L2 Norm: %f\n", mag);
    image gray = FUNC3(im);

    image c1 = FUNC0(im);
    image c2 = FUNC0(im);
    image c3 = FUNC0(im);
    image c4 = FUNC0(im);
    FUNC1(c1, .1, 1.5, 1.5);
    FUNC1(c2, -.1, .66666, .66666);
    FUNC1(c3, .1, 1.5, .66666);
    FUNC1(c4, .1, .66666, 1.5);


    FUNC10(im,   "Original", 1);
    FUNC10(gray, "Gray", 1);
    FUNC10(c1, "C1", 1);
    FUNC10(c2, "C2", 1);
    FUNC10(c3, "C3", 1);
    FUNC10(c4, "C4", 1);
#ifdef OPENCV
    while(1){
        image aug = random_augment_image(im, 0, .75, 320, 448, 320, 320);
        show_image(aug, "aug", 1);
        free_image(aug);


        float exposure = 1.15;
        float saturation = 1.15;
        float hue = .05;

        image c = copy_image(im);

        float dexp = rand_scale(exposure);
        float dsat = rand_scale(saturation);
        float dhue = rand_uniform(-hue, hue);

        distort_image(c, dhue, dsat, dexp);
        show_image(c, "rand", 1);
        printf("%f %f %f\n", dhue, dsat, dexp);
        free_image(c);
    }
#endif
}