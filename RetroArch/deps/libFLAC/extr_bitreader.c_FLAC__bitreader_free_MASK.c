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
struct TYPE_3__ {scalar_t__ buffer; scalar_t__ client_data; scalar_t__ read_callback; scalar_t__ consumed_bits; scalar_t__ consumed_words; scalar_t__ bytes; scalar_t__ words; scalar_t__ capacity; } ;
typedef  TYPE_1__ FLAC__BitReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

void FUNC2(FLAC__BitReader *br)
{
	FUNC0(0 != br);

	if(0 != br->buffer)
		FUNC1(br->buffer);
	br->buffer = 0;
	br->capacity = 0;
	br->words = br->bytes = 0;
	br->consumed_words = br->consumed_bits = 0;
	br->read_callback = 0;
	br->client_data = 0;
}