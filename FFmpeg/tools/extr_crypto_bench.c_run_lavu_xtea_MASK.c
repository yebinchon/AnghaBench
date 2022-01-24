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
struct AVXTEA {int dummy; } ;

/* Variables and functions */
 struct AVXTEA* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct AVXTEA*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AVXTEA*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  hardcoded_key ; 

__attribute__((used)) static void FUNC4(uint8_t *output,
                              const uint8_t *input, unsigned size)
{
    static struct AVXTEA *xtea;
    if (!xtea && !(xtea = FUNC0()))
        FUNC3("out of memory");
    FUNC2(xtea, hardcoded_key);
    FUNC1(xtea, output, input, size >> 3, NULL, 0);
}