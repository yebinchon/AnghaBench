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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  AV_TIMECODE_STR_SIZE ; 
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,char,unsigned int) ; 

__attribute__((used)) static char *FUNC2(char *buf, uint8_t *line)
{
    unsigned hh   = FUNC0(line[7] & 0x03, line[6] & 0x0f);  // 6-bit hours
    unsigned mm   = FUNC0(line[5] & 0x07, line[4] & 0x0f);  // 7-bit minutes
    unsigned ss   = FUNC0(line[3] & 0x07, line[2] & 0x0f);  // 7-bit seconds
    unsigned ff   = FUNC0(line[1] & 0x03, line[0] & 0x0f);  // 6-bit frames
    unsigned drop = (line[1] & 0x04);                          // 1-bit drop flag
    FUNC1(buf, AV_TIMECODE_STR_SIZE, "%02u:%02u:%02u%c%02u",
             hh, mm, ss, drop ? ';' : ':', ff);
    return buf;
}