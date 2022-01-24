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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 long long GameFreq ; 
 int /*<<< orphan*/  M64MSG_VERBOSE ; 
 unsigned int N64_SAMPLE_BYTES ; 
 int OutputFreq ; 
 scalar_t__ PrimaryBufferSize ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned char* primaryBuffer ; 
 unsigned int primaryBufferBytes ; 
 long long speed_factor ; 

__attribute__((used)) static void FUNC7(void)
{
    unsigned int newPrimaryBytes = (unsigned int) ((long long) PrimaryBufferSize * GameFreq * speed_factor /
                                                   (OutputFreq * 100)) * N64_SAMPLE_BYTES;
    if (primaryBuffer == NULL)
    {
        FUNC0(M64MSG_VERBOSE, "Allocating memory for audio buffer: %i bytes.", newPrimaryBytes);
        primaryBuffer = (unsigned char*) FUNC4(newPrimaryBytes);
        FUNC6(primaryBuffer, 0, newPrimaryBytes);
        primaryBufferBytes = newPrimaryBytes;
    }
    else if (newPrimaryBytes > primaryBufferBytes) /* primary buffer only grows; there's no point in shrinking it */
    {
        unsigned char *newPrimaryBuffer = (unsigned char*) FUNC4(newPrimaryBytes);
        unsigned char *oldPrimaryBuffer = primaryBuffer;
        FUNC1();
        FUNC5(newPrimaryBuffer, oldPrimaryBuffer, primaryBufferBytes);
        FUNC6(newPrimaryBuffer + primaryBufferBytes, 0, newPrimaryBytes - primaryBufferBytes);
        primaryBuffer = newPrimaryBuffer;
        primaryBufferBytes = newPrimaryBytes;
        FUNC2();
        FUNC3(oldPrimaryBuffer);
    }
}