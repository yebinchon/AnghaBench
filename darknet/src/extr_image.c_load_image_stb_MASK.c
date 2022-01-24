#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float* data; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 TYPE_1__ FUNC3 (int,int,int) ; 
 char* FUNC4 () ; 
 unsigned char* FUNC5 (char*,int*,int*,int*,int) ; 
 int /*<<< orphan*/  stderr ; 

image FUNC6(char *filename, int channels)
{
    int w, h, c;
    unsigned char *data = FUNC5(filename, &w, &h, &c, channels);
    if (!data) {
        FUNC1(stderr, "Cannot load image \"%s\"\nSTB Reason: %s\n", filename, FUNC4());
        FUNC0(0);
    }
    if(channels) c = channels;
    int i,j,k;
    image im = FUNC3(w, h, c);
    for(k = 0; k < c; ++k){
        for(j = 0; j < h; ++j){
            for(i = 0; i < w; ++i){
                int dst_index = i + w*j + w*h*k;
                int src_index = k + c*i + c*w*j;
                im.data[dst_index] = (float)data[src_index]/255.;
            }
        }
    }
    FUNC2(data);
    return im;
}