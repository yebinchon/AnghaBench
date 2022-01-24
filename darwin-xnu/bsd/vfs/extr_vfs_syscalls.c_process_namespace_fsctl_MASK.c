#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* user_addr_t ;
struct TYPE_11__ {scalar_t__ infoptr; } ;
typedef  TYPE_1__ user64_namespace_handler_info_ext ;
struct TYPE_12__ {scalar_t__ fdptr; scalar_t__ flags; scalar_t__ token; } ;
typedef  TYPE_2__ user64_namespace_handler_info ;
struct TYPE_13__ {scalar_t__ objid; } ;
typedef  TYPE_3__ user64_namespace_handler_data ;
struct TYPE_14__ {int /*<<< orphan*/  infoptr; } ;
typedef  TYPE_4__ user32_namespace_handler_info_ext ;
struct TYPE_15__ {int /*<<< orphan*/  fdptr; int /*<<< orphan*/  flags; int /*<<< orphan*/  token; } ;
typedef  TYPE_5__ user32_namespace_handler_info ;
struct TYPE_16__ {scalar_t__ objid; } ;
typedef  TYPE_6__ user32_namespace_handler_data ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  nspace_type_t ;
struct TYPE_17__ {void* objid; void* infoptr; void* fdptr; void* flags; void* token; } ;
typedef  TYPE_7__ namespace_handler_data ;
typedef  scalar_t__ caddr_t ;
struct TYPE_18__ {int /*<<< orphan*/  p_acflag; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int) ; 
 TYPE_9__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (TYPE_7__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(nspace_type_t nspace_type, int is64bit, u_int size, caddr_t data)
{
	int error = 0;
	namespace_handler_data nhd;

	FUNC1 (&nhd, sizeof(namespace_handler_data));

	if ((error = FUNC4(FUNC3(), &(FUNC2()->p_acflag)))) {
		return error;
	}

	error = FUNC5 (is64bit, size);
	if (error) {
		return error;
	}

	/* Copy in the userland pointers into our kernel-only struct */

	if (is64bit) {
		/* 64 bit userland structures */
		nhd.token = (user_addr_t)((user64_namespace_handler_info *)data)->token;
		nhd.flags = (user_addr_t)((user64_namespace_handler_info *)data)->flags;
		nhd.fdptr = (user_addr_t)((user64_namespace_handler_info *)data)->fdptr;

		/* If the size is greater than the standard info struct, add in extra fields */
		if (size > (sizeof(user64_namespace_handler_info))) {
			if (size >= (sizeof(user64_namespace_handler_info_ext))) {
				nhd.infoptr = (user_addr_t)((user64_namespace_handler_info_ext *)data)->infoptr;
			}
			if (size == (sizeof(user64_namespace_handler_data))) {
				nhd.objid = (user_addr_t)((user64_namespace_handler_data*)data)->objid;
			}
			/* Otherwise the fields were pre-zeroed when we did the bzero above. */
		}
	}
	else {
		/* 32 bit userland structures */
		nhd.token = FUNC0(((user32_namespace_handler_info *)data)->token);
		nhd.flags = FUNC0(((user32_namespace_handler_info *)data)->flags);
		nhd.fdptr = FUNC0(((user32_namespace_handler_info *)data)->fdptr);

		if (size > (sizeof(user32_namespace_handler_info))) {
			if (size >= (sizeof(user32_namespace_handler_info_ext))) {
				nhd.infoptr = FUNC0(((user32_namespace_handler_info_ext *)data)->infoptr);
			}
			if (size == (sizeof(user32_namespace_handler_data))) {
				nhd.objid = (user_addr_t)((user32_namespace_handler_data*)data)->objid;
			}
			/* Otherwise the fields were pre-zeroed when we did the bzero above. */
		}
	}

	return FUNC6(&nhd, nspace_type);
}