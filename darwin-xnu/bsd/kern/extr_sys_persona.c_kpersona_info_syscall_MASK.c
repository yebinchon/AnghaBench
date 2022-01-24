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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  uid_t ;
struct persona {int /*<<< orphan*/  pna_login; int /*<<< orphan*/  pna_type; int /*<<< orphan*/  pna_id; } ;
struct kpersona_info {unsigned int persona_ngroups; int /*<<< orphan*/  persona_name; int /*<<< orphan*/  persona_gmuid; int /*<<< orphan*/  persona_groups; int /*<<< orphan*/  persona_gid; int /*<<< orphan*/  persona_type; int /*<<< orphan*/  persona_id; int /*<<< orphan*/  persona_info_version; } ;
typedef  int /*<<< orphan*/  persona_id ;
typedef  int /*<<< orphan*/  kinfo ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  MAXLOGNAME ; 
 int /*<<< orphan*/  NGROUPS ; 
 int /*<<< orphan*/  PERSONA_INFO_V1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct kpersona_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kpersona_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct persona*) ; 
 int /*<<< orphan*/  FUNC5 (struct persona*) ; 
 int /*<<< orphan*/  FUNC6 (struct persona*,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct persona* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct persona*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(user_addr_t idp, user_addr_t infop)
{
	int error;
	uid_t persona_id;
	struct persona *persona;
	struct kpersona_info kinfo;

	error = FUNC0(idp, &persona_id, sizeof(persona_id));
	if (error)
		return error;

	/*
	 * TODO: rdar://problem/19981151
	 * Add entitlement check!
	 */

	persona = FUNC7(persona_id);
	if (!persona)
		return ESRCH;

	FUNC3("FOUND: persona: id:%d, gid:%d, login:\"%s\"",
		    persona->pna_id, FUNC4(persona),
		    persona->pna_login);

	FUNC2(&kinfo, 0, sizeof(kinfo));
	kinfo.persona_info_version = PERSONA_INFO_V1;
	kinfo.persona_id = persona->pna_id;
	kinfo.persona_type = persona->pna_type;
	kinfo.persona_gid = FUNC4(persona);
	unsigned ngroups = 0;
	FUNC6(persona, &ngroups, kinfo.persona_groups, NGROUPS);
	kinfo.persona_ngroups = ngroups;
	kinfo.persona_gmuid = FUNC5(persona);

	/*
	 * NULL termination is assured b/c persona_name is
	 * exactly MAXLOGNAME + 1 bytes (and has been memset to 0)
	 */
	FUNC9(kinfo.persona_name, persona->pna_login, MAXLOGNAME);

	FUNC8(persona);

	error = FUNC1(&kinfo, infop);

	return error;
}