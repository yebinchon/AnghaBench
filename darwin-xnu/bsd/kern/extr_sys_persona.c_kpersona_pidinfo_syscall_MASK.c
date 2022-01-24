#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
struct persona {int /*<<< orphan*/  pna_login; int /*<<< orphan*/  pna_type; int /*<<< orphan*/  pna_id; } ;
struct kpersona_info {unsigned int persona_ngroups; int /*<<< orphan*/  persona_name; int /*<<< orphan*/  persona_gmuid; int /*<<< orphan*/  persona_groups; int /*<<< orphan*/  persona_gid; int /*<<< orphan*/  persona_type; int /*<<< orphan*/  persona_id; int /*<<< orphan*/  persona_info_version; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  pid ;
typedef  int /*<<< orphan*/  kinfo ;
struct TYPE_2__ {scalar_t__ p_pid; } ;

/* Variables and functions */
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  MAXLOGNAME ; 
 int /*<<< orphan*/  NGROUPS ; 
 int /*<<< orphan*/  PERSONA_INFO_V1 ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kpersona_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kpersona_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct persona*) ; 
 int /*<<< orphan*/  FUNC7 (struct persona*) ; 
 int /*<<< orphan*/  FUNC8 (struct persona*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct persona* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct persona*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(user_addr_t idp, user_addr_t infop)
{
	int error;
	pid_t pid;
	struct persona *persona;
	struct kpersona_info kinfo;

	error = FUNC0(idp, &pid, sizeof(pid));
	if (error)
		return error;

	if (!FUNC3(FUNC2())
	    && (pid != FUNC1()->p_pid))
		return EPERM;

	persona = FUNC9(pid);
	if (!persona)
		return ESRCH;

	FUNC5(&kinfo, 0, sizeof(kinfo));
	kinfo.persona_info_version = PERSONA_INFO_V1;
	kinfo.persona_id = persona->pna_id;
	kinfo.persona_type = persona->pna_type;
	kinfo.persona_gid = FUNC6(persona);
	unsigned ngroups = 0;
	FUNC8(persona, &ngroups, kinfo.persona_groups, NGROUPS);
	kinfo.persona_ngroups = ngroups;
	kinfo.persona_gmuid = FUNC7(persona);

	FUNC11(kinfo.persona_name, persona->pna_login, MAXLOGNAME);

	FUNC10(persona);

	error = FUNC4(&kinfo, infop);

	return error;
}