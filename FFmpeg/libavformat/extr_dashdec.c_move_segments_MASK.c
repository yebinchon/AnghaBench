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
struct representation {scalar_t__ start_number; scalar_t__ n_fragments; scalar_t__ cur_seq_no; int /*<<< orphan*/ * fragments; int /*<<< orphan*/  last_seq_no; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  DASHContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct representation*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct representation*) ; 

__attribute__((used)) static void FUNC2(struct representation *rep_src, struct representation *rep_dest, DASHContext *c)
{
    if (rep_dest && rep_src ) {
        FUNC1(rep_dest);
        if (rep_src->start_number > (rep_dest->start_number + rep_dest->n_fragments))
            rep_dest->cur_seq_no = 0;
        else
            rep_dest->cur_seq_no += rep_src->start_number - rep_dest->start_number;
        rep_dest->fragments    = rep_src->fragments;
        rep_dest->n_fragments  = rep_src->n_fragments;
        rep_dest->parent  = rep_src->parent;
        rep_dest->last_seq_no = FUNC0(rep_dest, c);
        rep_src->fragments = NULL;
        rep_src->n_fragments = 0;
    }
}