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
struct sbg_script {int /*<<< orphan*/  opt_mix; int /*<<< orphan*/  events; int /*<<< orphan*/  block_tseq; int /*<<< orphan*/  tseq; int /*<<< orphan*/  synth; int /*<<< orphan*/  def; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct sbg_script *s)
{
    FUNC0(&s->def);
    FUNC0(&s->synth);
    FUNC0(&s->tseq);
    FUNC0(&s->block_tseq);
    FUNC0(&s->events);
    FUNC0(&s->opt_mix);
}