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
typedef  int /*<<< orphan*/  UBYTE ;
typedef  int /*<<< orphan*/  SWORD ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int VTRX_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ bit16 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int num_pokeys ; 
 int /*<<< orphan*/  temp_votrax_buffer ; 
 int /*<<< orphan*/  votrax_buffer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ votrax_written ; 
 int /*<<< orphan*/  votrax_written_byte ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void *sndbuffer, int sndn)
{
	if (!FUNC4()) return;

	if(votrax_written) {
		votrax_written = FALSE;
		FUNC0(votrax_written_byte);
	}
	sndn /= num_pokeys;
	while (sndn > 0) {
		int amount = ((sndn > VTRX_BLOCK_SIZE) ? VTRX_BLOCK_SIZE : sndn);
		FUNC3(votrax_buffer, amount, temp_votrax_buffer);
		if (bit16) FUNC1((SWORD *)sndbuffer, votrax_buffer, amount, 128/4);
		else FUNC2((UBYTE *)sndbuffer, votrax_buffer, amount, 128/4);
		sndbuffer = (char *) sndbuffer + VTRX_BLOCK_SIZE*(bit16 ? 2 : 1)*((num_pokeys == 2) ? 2: 1);
		sndn -= VTRX_BLOCK_SIZE;
	}
}