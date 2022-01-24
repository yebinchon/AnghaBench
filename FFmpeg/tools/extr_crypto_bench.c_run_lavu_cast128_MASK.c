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
struct AVCAST5 {int dummy; } ;

/* Variables and functions */
 struct AVCAST5* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct AVCAST5*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AVCAST5*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  hardcoded_key ; 

__attribute__((used)) static void FUNC4(uint8_t *output,
                             const uint8_t *input, unsigned size)
{
    static struct AVCAST5 *cast;
    if (!cast && !(cast = FUNC0()))
        FUNC3("out of memory");
    FUNC2(cast, hardcoded_key, 128);
    FUNC1(cast, output, input, size >> 3, 0);
}