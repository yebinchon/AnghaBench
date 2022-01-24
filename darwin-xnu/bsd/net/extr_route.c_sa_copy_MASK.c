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
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  sin6_addr; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 unsigned int IFSCOPE_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct sockaddr* FUNC1 (struct sockaddr_storage*) ; 
 TYPE_1__* FUNC2 (struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,struct sockaddr_storage*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_storage*,int) ; 
 unsigned int FUNC6 (struct sockaddr*) ; 
 unsigned int FUNC7 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr*,unsigned int) ; 
 unsigned int FUNC10 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr*,unsigned int) ; 

struct sockaddr *
FUNC12(struct sockaddr *src, struct sockaddr_storage *dst,
    unsigned int *pifscope)
{
	int af = src->sa_family;
	unsigned int ifscope = (pifscope != NULL) ? *pifscope : IFSCOPE_NONE;

	FUNC3(af == AF_INET || af == AF_INET6);

	FUNC5(dst, sizeof (*dst));

	if (af == AF_INET) {
		FUNC4(src, dst, sizeof (struct sockaddr_in));
		if (pifscope == NULL || ifscope != IFSCOPE_NONE)
			FUNC11(FUNC1(dst), ifscope);
	} else {
		FUNC4(src, dst, sizeof (struct sockaddr_in6));
		if (pifscope != NULL &&
		    FUNC0(&FUNC2(dst)->sin6_addr)) {
			unsigned int eifscope;
			/*
			 * If the address contains the embedded scope ID,
			 * use that as the value for sin6_scope_id as long
			 * the caller doesn't insist on clearing it (by
			 * passing NULL) or setting it.
			 */
			eifscope = FUNC6(FUNC1(dst));
			if (eifscope != IFSCOPE_NONE && ifscope == IFSCOPE_NONE)
				ifscope = eifscope;
			if (ifscope != IFSCOPE_NONE) {
				/* Set ifscope from pifscope or eifscope */
				FUNC9(FUNC1(dst), ifscope);
			} else {
				/* If sin6_scope_id has a value, use that one */
				ifscope = FUNC7(FUNC1(dst));
			}
			/*
			 * If sin6_scope_id is set but the address doesn't
			 * contain the equivalent embedded value, set it.
			 */
			if (ifscope != IFSCOPE_NONE && eifscope != ifscope)
				FUNC8(FUNC1(dst), ifscope);
		} else if (pifscope == NULL || ifscope != IFSCOPE_NONE) {
			FUNC9(FUNC1(dst), ifscope);
		}
	}

	if (pifscope != NULL) {
		*pifscope = (af == AF_INET) ? FUNC10(FUNC1(dst)) :
		    FUNC7(FUNC1(dst));
	}

	return (FUNC1(dst));
}