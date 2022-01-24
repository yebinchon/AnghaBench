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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_3__ {int width; int height; int redBits; int greenBits; int blueBits; int refreshRate; } ;
typedef  TYPE_1__ GLFWvidmode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int,int,int,int,int) ; 

__attribute__((used)) static const char* FUNC1(const GLFWvidmode* mode)
{
    static char buffer[512];

    FUNC0(buffer,
            "%i x %i x %i (%i %i %i) %i Hz",
            mode->width, mode->height,
            mode->redBits + mode->greenBits + mode->blueBits,
            mode->redBits, mode->greenBits, mode->blueBits,
            mode->refreshRate);

    buffer[sizeof(buffer) - 1] = '\0';
    return buffer;
}