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
typedef  int /*<<< orphan*/  LZ4_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char*,int,int /*<<< orphan*/ ,int) ; 

int FUNC2 (LZ4_stream_t* LZ4_stream, const char* source, char* dest, int inputSize)
{
    return FUNC1(LZ4_stream, source, dest, inputSize, FUNC0(inputSize), 1);
}