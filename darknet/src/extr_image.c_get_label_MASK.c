#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {double h; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__,double) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC3 (TYPE_1__,TYPE_1__,int) ; 

image FUNC4(image **characters, char *string, int size)
{
    size = size/10;
    if(size > 7) size = 7;
    image label = FUNC2(0,0,0);
    while(*string){
        image l = characters[size][(int)*string];
        image n = FUNC3(label, l, -size - 1 + (size+1)/2);
        FUNC1(label);
        label = n;
        ++string;
    }
    image b = FUNC0(label, label.h*.25);
    FUNC1(label);
    return b;
}