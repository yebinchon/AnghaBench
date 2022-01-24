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
struct pipe {int /*<<< orphan*/  pipe_label; } ;
struct label {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pipe*,int /*<<< orphan*/ ,struct label*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct pipe*,struct label*) ; 
 int /*<<< orphan*/  pipe_label_update ; 

int
FUNC2(kauth_cred_t cred, struct pipe *cpipe,
    struct label *label)
{
	int error;

	error = FUNC1(cred, cpipe, label);
	if (error)
		return (error);

	FUNC0(pipe_label_update, cred, cpipe, cpipe->pipe_label, label);

	return (0);
}