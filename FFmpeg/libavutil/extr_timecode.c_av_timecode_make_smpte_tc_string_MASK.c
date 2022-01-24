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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  AV_TIMECODE_STR_SIZE ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,char,unsigned int) ; 

char *FUNC2(char *buf, uint32_t tcsmpte, int prevent_df)
{
    unsigned hh   = FUNC0(tcsmpte     & 0x3f);    // 6-bit hours
    unsigned mm   = FUNC0(tcsmpte>>8  & 0x7f);    // 7-bit minutes
    unsigned ss   = FUNC0(tcsmpte>>16 & 0x7f);    // 7-bit seconds
    unsigned ff   = FUNC0(tcsmpte>>24 & 0x3f);    // 6-bit frames
    unsigned drop = tcsmpte & 1<<30 && !prevent_df;  // 1-bit drop if not arbitrary bit
    FUNC1(buf, AV_TIMECODE_STR_SIZE, "%02u:%02u:%02u%c%02u",
             hh, mm, ss, drop ? ';' : ':', ff);
    return buf;
}