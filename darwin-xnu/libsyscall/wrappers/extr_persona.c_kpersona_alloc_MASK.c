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
typedef  int /*<<< orphan*/  uid_t ;
struct kpersona_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERSONA_OP_ALLOC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kpersona_info*,int /*<<< orphan*/ *,size_t*) ; 

int FUNC1(struct kpersona_info *info, uid_t *id)
{
	size_t idlen = 1;
	return FUNC0(PERSONA_OP_ALLOC, 0, info, id, &idlen);
}