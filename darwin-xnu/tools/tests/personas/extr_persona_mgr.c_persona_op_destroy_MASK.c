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
struct kpersona_info {int /*<<< orphan*/  persona_id; int /*<<< orphan*/  persona_info_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERSONA_INFO_V1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kpersona_info *ki)
{
	int ret;

	FUNC1("Destroying Persona %d...", ki->persona_id);
	ki->persona_info_version = PERSONA_INFO_V1;
	ret = FUNC2(ki->persona_id);
	if (ret < 0)
		FUNC0("destroy failed!");

	return ret;
}