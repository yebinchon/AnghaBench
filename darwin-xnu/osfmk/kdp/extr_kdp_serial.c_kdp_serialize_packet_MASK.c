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
 char SKDP_END_CHAR ; 
 char SKDP_START_CHAR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,void (*) (char)) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 

void FUNC2(unsigned char *packet, unsigned int len, void (*outFunc)(char))
{
	unsigned int  index;
	unsigned char byte;
	uint32_t      crc;

	// insert the CRC between back to back STARTs which is compatible with old clients
	crc = (uint32_t) FUNC1(0, packet, len);
	outFunc(SKDP_START_CHAR);
	FUNC0((crc >> 0),  outFunc);
	FUNC0((crc >> 8),  outFunc);
	FUNC0((crc >> 16), outFunc);
	FUNC0((crc >> 24), outFunc);

	outFunc(SKDP_START_CHAR);
	for (index = 0; index < len; index++) {
		byte = *packet++;
		FUNC0(byte, outFunc);
	}
	outFunc(SKDP_END_CHAR);
}