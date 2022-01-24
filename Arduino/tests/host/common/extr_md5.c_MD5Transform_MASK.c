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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int MD5_SIZE ; 
 int /*<<< orphan*/  S11 ; 
 int /*<<< orphan*/  S12 ; 
 int /*<<< orphan*/  S13 ; 
 int /*<<< orphan*/  S14 ; 
 int /*<<< orphan*/  S21 ; 
 int /*<<< orphan*/  S22 ; 
 int /*<<< orphan*/  S23 ; 
 int /*<<< orphan*/  S24 ; 
 int /*<<< orphan*/  S31 ; 
 int /*<<< orphan*/  S32 ; 
 int /*<<< orphan*/  S33 ; 
 int /*<<< orphan*/  S34 ; 
 int /*<<< orphan*/  S41 ; 
 int /*<<< orphan*/  S42 ; 
 int /*<<< orphan*/  S43 ; 
 int /*<<< orphan*/  S44 ; 

__attribute__((used)) static void FUNC5(uint32_t state[4], const uint8_t block[64])
{
    uint32_t a = state[0], b = state[1], c = state[2], 
             d = state[3], x[MD5_SIZE];

    FUNC0(x, block, 64);

    /* Round 1 */
    FUNC1 (a, b, c, d, x[ 0], S11, 0xd76aa478); /* 1 */
    FUNC1 (d, a, b, c, x[ 1], S12, 0xe8c7b756); /* 2 */
    FUNC1 (c, d, a, b, x[ 2], S13, 0x242070db); /* 3 */
    FUNC1 (b, c, d, a, x[ 3], S14, 0xc1bdceee); /* 4 */
    FUNC1 (a, b, c, d, x[ 4], S11, 0xf57c0faf); /* 5 */
    FUNC1 (d, a, b, c, x[ 5], S12, 0x4787c62a); /* 6 */
    FUNC1 (c, d, a, b, x[ 6], S13, 0xa8304613); /* 7 */
    FUNC1 (b, c, d, a, x[ 7], S14, 0xfd469501); /* 8 */
    FUNC1 (a, b, c, d, x[ 8], S11, 0x698098d8); /* 9 */
    FUNC1 (d, a, b, c, x[ 9], S12, 0x8b44f7af); /* 10 */
    FUNC1 (c, d, a, b, x[10], S13, 0xffff5bb1); /* 11 */
    FUNC1 (b, c, d, a, x[11], S14, 0x895cd7be); /* 12 */
    FUNC1 (a, b, c, d, x[12], S11, 0x6b901122); /* 13 */
    FUNC1 (d, a, b, c, x[13], S12, 0xfd987193); /* 14 */
    FUNC1 (c, d, a, b, x[14], S13, 0xa679438e); /* 15 */
    FUNC1 (b, c, d, a, x[15], S14, 0x49b40821); /* 16 */

    /* Round 2 */
    FUNC2 (a, b, c, d, x[ 1], S21, 0xf61e2562); /* 17 */
    FUNC2 (d, a, b, c, x[ 6], S22, 0xc040b340); /* 18 */
    FUNC2 (c, d, a, b, x[11], S23, 0x265e5a51); /* 19 */
    FUNC2 (b, c, d, a, x[ 0], S24, 0xe9b6c7aa); /* 20 */
    FUNC2 (a, b, c, d, x[ 5], S21, 0xd62f105d); /* 21 */
    FUNC2 (d, a, b, c, x[10], S22,  0x2441453); /* 22 */
    FUNC2 (c, d, a, b, x[15], S23, 0xd8a1e681); /* 23 */
    FUNC2 (b, c, d, a, x[ 4], S24, 0xe7d3fbc8); /* 24 */
    FUNC2 (a, b, c, d, x[ 9], S21, 0x21e1cde6); /* 25 */
    FUNC2 (d, a, b, c, x[14], S22, 0xc33707d6); /* 26 */
    FUNC2 (c, d, a, b, x[ 3], S23, 0xf4d50d87); /* 27 */
    FUNC2 (b, c, d, a, x[ 8], S24, 0x455a14ed); /* 28 */
    FUNC2 (a, b, c, d, x[13], S21, 0xa9e3e905); /* 29 */
    FUNC2 (d, a, b, c, x[ 2], S22, 0xfcefa3f8); /* 30 */
    FUNC2 (c, d, a, b, x[ 7], S23, 0x676f02d9); /* 31 */
    FUNC2 (b, c, d, a, x[12], S24, 0x8d2a4c8a); /* 32 */

    /* Round 3 */
    FUNC3 (a, b, c, d, x[ 5], S31, 0xfffa3942); /* 33 */
    FUNC3 (d, a, b, c, x[ 8], S32, 0x8771f681); /* 34 */
    FUNC3 (c, d, a, b, x[11], S33, 0x6d9d6122); /* 35 */
    FUNC3 (b, c, d, a, x[14], S34, 0xfde5380c); /* 36 */
    FUNC3 (a, b, c, d, x[ 1], S31, 0xa4beea44); /* 37 */
    FUNC3 (d, a, b, c, x[ 4], S32, 0x4bdecfa9); /* 38 */
    FUNC3 (c, d, a, b, x[ 7], S33, 0xf6bb4b60); /* 39 */
    FUNC3 (b, c, d, a, x[10], S34, 0xbebfbc70); /* 40 */
    FUNC3 (a, b, c, d, x[13], S31, 0x289b7ec6); /* 41 */
    FUNC3 (d, a, b, c, x[ 0], S32, 0xeaa127fa); /* 42 */
    FUNC3 (c, d, a, b, x[ 3], S33, 0xd4ef3085); /* 43 */
    FUNC3 (b, c, d, a, x[ 6], S34,  0x4881d05); /* 44 */
    FUNC3 (a, b, c, d, x[ 9], S31, 0xd9d4d039); /* 45 */
    FUNC3 (d, a, b, c, x[12], S32, 0xe6db99e5); /* 46 */
    FUNC3 (c, d, a, b, x[15], S33, 0x1fa27cf8); /* 47 */
    FUNC3 (b, c, d, a, x[ 2], S34, 0xc4ac5665); /* 48 */

    /* Round 4 */
    FUNC4 (a, b, c, d, x[ 0], S41, 0xf4292244); /* 49 */
    FUNC4 (d, a, b, c, x[ 7], S42, 0x432aff97); /* 50 */
    FUNC4 (c, d, a, b, x[14], S43, 0xab9423a7); /* 51 */
    FUNC4 (b, c, d, a, x[ 5], S44, 0xfc93a039); /* 52 */
    FUNC4 (a, b, c, d, x[12], S41, 0x655b59c3); /* 53 */
    FUNC4 (d, a, b, c, x[ 3], S42, 0x8f0ccc92); /* 54 */
    FUNC4 (c, d, a, b, x[10], S43, 0xffeff47d); /* 55 */
    FUNC4 (b, c, d, a, x[ 1], S44, 0x85845dd1); /* 56 */
    FUNC4 (a, b, c, d, x[ 8], S41, 0x6fa87e4f); /* 57 */
    FUNC4 (d, a, b, c, x[15], S42, 0xfe2ce6e0); /* 58 */
    FUNC4 (c, d, a, b, x[ 6], S43, 0xa3014314); /* 59 */
    FUNC4 (b, c, d, a, x[13], S44, 0x4e0811a1); /* 60 */
    FUNC4 (a, b, c, d, x[ 4], S41, 0xf7537e82); /* 61 */
    FUNC4 (d, a, b, c, x[11], S42, 0xbd3af235); /* 62 */
    FUNC4 (c, d, a, b, x[ 2], S43, 0x2ad7d2bb); /* 63 */
    FUNC4 (b, c, d, a, x[ 9], S44, 0xeb86d391); /* 64 */

    state[0] += a;
    state[1] += b;
    state[2] += c;
    state[3] += d;
}