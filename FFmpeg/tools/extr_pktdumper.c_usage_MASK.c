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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC1(int ret)
{
    FUNC0(stderr, "Dump (up to maxpkts) AVPackets as they are demuxed by libavformat.\n");
    FUNC0(stderr, "Each packet is dumped in its own file named like\n");
    FUNC0(stderr, "$(basename file.ext)_$PKTNUM_$STREAMINDEX_$STAMP_$SIZE_$FLAGS.bin\n");
    FUNC0(stderr, "pktdumper [-nw] file [maxpkts]\n");
    FUNC0(stderr, "-n\twrite No file at all, only demux.\n");
    FUNC0(stderr, "-w\tWait at end of processing instead of quitting.\n");
    return ret;
}