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
typedef  int /*<<< orphan*/  LZ4_stream_t_internal ;
typedef  int /*<<< orphan*/  LZ4_stream_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int LZ4_STREAMSIZE ; 
 int /*<<< orphan*/  LZ4_STREAMSIZE_U64 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

LZ4_stream_t* FUNC3(void)
{
    LZ4_stream_t* lz4s = (LZ4_stream_t*)FUNC0(8, LZ4_STREAMSIZE_U64);
    FUNC1(LZ4_STREAMSIZE >= sizeof(LZ4_stream_t_internal));    /* A compilation error here means LZ4_STREAMSIZE is not large enough */
    FUNC2(lz4s);
    return lz4s;
}