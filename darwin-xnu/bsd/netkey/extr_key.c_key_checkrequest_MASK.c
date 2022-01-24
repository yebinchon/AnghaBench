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
typedef  scalar_t__ u_int ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct secasvar {int dummy; } ;
struct secasindex {int mode; int /*<<< orphan*/  dst; } ;
struct ipsecrequest {int /*<<< orphan*/  sp; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ IPSEC_LEVEL_REQUIRE ; 
#define  IPSEC_MODE_ANY 130 
#define  IPSEC_MODE_TRANSPORT 129 
#define  IPSEC_MODE_TUNNEL 128 
 int /*<<< orphan*/  IPSEC_PORT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 scalar_t__ FUNC1 (struct ipsecrequest*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct secasindex*,int /*<<< orphan*/ ) ; 
 struct secasvar* FUNC4 (struct secasindex*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  sadb_mutex ; 

int
FUNC6(
				 struct ipsecrequest *isr,
				 struct secasindex *saidx,
				 struct secasvar **sav)
{
	u_int level;
	int error;
	struct sockaddr_in *sin;
	
	FUNC0(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);
	
	*sav = NULL;
	
	/* sanity check */
	if (isr == NULL || saidx == NULL)
		FUNC5("key_checkrequest: NULL pointer is passed.\n");
	
	/* check mode */
	switch (saidx->mode) {
		case IPSEC_MODE_TRANSPORT:
		case IPSEC_MODE_TUNNEL:
			break;
		case IPSEC_MODE_ANY:
		default:
			FUNC5("key_checkrequest: Invalid policy defined.\n");
	}
	
	/* get current level */
	level = FUNC1(isr);
	
	
	/*
	 * key_allocsa_policy should allocate the oldest SA available.
	 * See key_do_allocsa_policy(), and draft-jenkins-ipsec-rekeying-03.txt.
	 */
	if (*sav == NULL)
		*sav = FUNC4(saidx);
	
	/* When there is SA. */
	if (*sav != NULL)
		return 0;
	
	/* There is no SA.
	 *
	 * Remove dst port - used for special natt support - don't call
	 * key_acquire with it.
	 */
	if (saidx->mode == IPSEC_MODE_TRANSPORT) {
		sin = (struct sockaddr_in *)&saidx->dst;
		sin->sin_port = IPSEC_PORT_ANY;
	}
	if ((error = FUNC3(saidx, isr->sp)) != 0) {
		/* XXX What should I do ? */
		FUNC2((LOG_DEBUG, "key_checkrequest: error %d returned "
				  "from key_acquire.\n", error));
		return error;
	}
	
	return level == IPSEC_LEVEL_REQUIRE ? ENOENT : 0;
}