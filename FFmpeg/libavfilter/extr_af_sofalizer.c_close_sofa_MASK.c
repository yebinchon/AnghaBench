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
struct MySofa {int /*<<< orphan*/  fir; int /*<<< orphan*/ * hrtf; int /*<<< orphan*/ * lookup; int /*<<< orphan*/ * neighborhood; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct MySofa *sofa)
{
    if (sofa->neighborhood)
        FUNC3(sofa->neighborhood);
    sofa->neighborhood = NULL;
    if (sofa->lookup)
        FUNC2(sofa->lookup);
    sofa->lookup = NULL;
    if (sofa->hrtf)
        FUNC1(sofa->hrtf);
    sofa->hrtf = NULL;
    FUNC0(&sofa->fir);

    return 0;
}