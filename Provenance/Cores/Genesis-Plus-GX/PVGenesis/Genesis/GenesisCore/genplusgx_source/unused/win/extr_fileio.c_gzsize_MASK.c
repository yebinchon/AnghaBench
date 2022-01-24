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
typedef  int /*<<< orphan*/  gzFile ;

/* Variables and functions */
 int CHUNKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(gzFile *gd)
{
    #define CHUNKSIZE   (0x10000)
    int size = 0, length = 0;
    unsigned char buffer[CHUNKSIZE];
    FUNC2(gd);
    do {
        size = FUNC1(gd, buffer, CHUNKSIZE);
        if(size <= 0) break;
        length += size;
    } while (!FUNC0(gd));
    FUNC2(gd);
    return (length);
    #undef CHUNKSIZE
}