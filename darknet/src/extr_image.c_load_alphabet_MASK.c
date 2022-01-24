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
typedef  int /*<<< orphan*/  image ;

/* Variables and functions */
 void* FUNC0 (int const,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int) ; 

image **FUNC3()
{
    int i, j;
    const int nsize = 8;
    image **alphabets = FUNC0(nsize, sizeof(image));
    for(j = 0; j < nsize; ++j){
        alphabets[j] = FUNC0(128, sizeof(image));
        for(i = 32; i < 127; ++i){
            char buff[256];
            FUNC2(buff, "data/labels/%d_%d.png", i, j);
            alphabets[j][i] = FUNC1(buff, 0, 0);
        }
    }
    return alphabets;
}