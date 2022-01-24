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
struct proc {int p_csflags; int /*<<< orphan*/  p_textoff; int /*<<< orphan*/ * p_textvp; } ;
struct cs_blob {int /*<<< orphan*/ * csb_cdhash; } ;

/* Variables and functions */
 int CS_SIGNED ; 
 struct cs_blob* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

uint8_t *
FUNC1(struct proc *p)
{
	struct cs_blob *csblob;

	if ((p->p_csflags & CS_SIGNED) == 0) {
		return NULL;
	}

	if (NULL == p->p_textvp)
		return NULL;

	if ((csblob = FUNC0(p->p_textvp, -1, p->p_textoff)) == NULL)
		return NULL;

	return csblob->csb_cdhash;
}