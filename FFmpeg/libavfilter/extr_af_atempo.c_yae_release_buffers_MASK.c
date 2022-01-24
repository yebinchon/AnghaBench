#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * complex_to_real; int /*<<< orphan*/ * real_to_complex; int /*<<< orphan*/  correlation; int /*<<< orphan*/  hann; int /*<<< orphan*/  buffer; TYPE_1__* frag; } ;
struct TYPE_5__ {int /*<<< orphan*/  xdat; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ ATempoContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(ATempoContext *atempo)
{
    FUNC2(atempo);

    FUNC0(&atempo->frag[0].data);
    FUNC0(&atempo->frag[1].data);
    FUNC0(&atempo->frag[0].xdat);
    FUNC0(&atempo->frag[1].xdat);

    FUNC0(&atempo->buffer);
    FUNC0(&atempo->hann);
    FUNC0(&atempo->correlation);

    FUNC1(atempo->real_to_complex);
    atempo->real_to_complex = NULL;

    FUNC1(atempo->complex_to_real);
    atempo->complex_to_real = NULL;
}