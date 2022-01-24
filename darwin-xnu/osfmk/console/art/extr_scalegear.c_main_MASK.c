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
typedef  scalar_t__ vImage_Error ;
struct TYPE_4__ {int width; int height; int rowBytes; void* data; } ;
typedef  TYPE_1__ vImage_Buffer ;
typedef  int uint8_t ;
typedef  size_t uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t* gGearPict2x ; 
 int kGearFrames ; 
 int kGearHeight ; 
 int kGearWidth ; 
 int /*<<< orphan*/  kvImageHighQualityResampling ; 
 scalar_t__ kvImageNoError ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(int argc, char * argv[])
{
    vImage_Buffer vs;
    vImage_Buffer vd;
    vImage_Error  verr;
    uint32_t      i, data32;
    uint8_t       data8;

    vs.width  = kGearWidth * 2;
    vs.height = kGearHeight * 2 * kGearFrames;
    vs.rowBytes  = vs.width * sizeof(uint32_t);
    vs.data = FUNC1(vs.height * vs.rowBytes);

    vd.width  = 1.5 * vs.width;
    vd.height = 1.5 * vs.height;
    vd.rowBytes  = vd.width * sizeof(uint32_t);
    vd.data = FUNC1(vd.height * vd.rowBytes);

    for (i = 0; i < vs.width * vs.height; i++)
    {
    	data32 = gGearPict2x[i];
    	data32 = (0xFF000000 | (data32 << 16) | (data32 << 8) | data32);
    	((uint32_t *)vs.data)[i] = data32;
    }

    verr = FUNC3(&vs, &vd, NULL, kvImageHighQualityResampling);

    if (kvImageNoError != verr) FUNC0(1);

    FUNC2("const unsigned char gGearPict3x[9*kGearFrames*kGearWidth*kGearHeight] = {");

    for (i = 0; i < vd.width * vd.height; i++)
    {
    	data32 = ((uint32_t *)vd.data)[i];
	data8 = (0xFF & data32);
    	if (data32 != (0xFF000000 | (data8 << 16) | (data8 << 8) | data8)) FUNC0(1);

 	if (0 == (15 & i)) FUNC2("\n    ");
	FUNC2("0x%02x,", data8);
    }
    FUNC2("\n};\n");

    FUNC0(0);
}