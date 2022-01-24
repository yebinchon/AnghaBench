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
struct bitstream {int doffset; int bits; int dlength; } ;

/* Variables and functions */

int FUNC0(struct bitstream* bitstream) { return ((bitstream->doffset - bitstream->bits / 8) > bitstream->dlength); }