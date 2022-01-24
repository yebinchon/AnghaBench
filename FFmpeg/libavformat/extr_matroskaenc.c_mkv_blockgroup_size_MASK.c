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
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int pkt_size)
{
    int size = pkt_size + 4;
    size += FUNC0(size);
    size += 2;              // EBML ID for block and block duration
    size += 9;              // max size of block duration incl. length field
    return size;
}