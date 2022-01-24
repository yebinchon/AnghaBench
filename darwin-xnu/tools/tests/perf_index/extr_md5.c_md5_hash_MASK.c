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
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

void FUNC4(uint8_t *message, uint64_t len, uint32_t *hash) {
	hash[0] = 0x67452301;
	hash[1] = 0xEFCDAB89;
	hash[2] = 0x98BADCFE;
	hash[3] = 0x10325476;
	
	FUNC1(hash, len/64, message);
	
	uint32_t blockbuff[16];
	uint8_t *byteptr = (uint8_t*)blockbuff;
	
	int left = len % 64;
	FUNC2(byteptr, message + len-left, left);
	
	byteptr[left] = 0x80;
	left++;
	if (64 - left >= 8)
		FUNC0(byteptr + left, 56 - left);
	else {
		FUNC3(byteptr + left, 0, 64 - left);
		FUNC1(hash, 1, blockbuff);
		FUNC0(blockbuff, 56);
	}
	blockbuff[14] = (uint32_t)(len << 3);
	blockbuff[15] = (uint32_t)(len >> 29);
	FUNC1(hash, 1, blockbuff);
}