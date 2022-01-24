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
struct representation {int dummy; } ;
struct TYPE_3__ {int n_audios; struct representation** audios; } ;
typedef  TYPE_1__ DASHContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct representation***) ; 
 int /*<<< orphan*/  FUNC1 (struct representation*) ; 

__attribute__((used)) static void FUNC2(DASHContext *c)
{
    int i;
    for (i = 0; i < c->n_audios; i++) {
        struct representation *pls = c->audios[i];
        FUNC1(pls);
    }
    FUNC0(&c->audios);
    c->n_audios = 0;
}