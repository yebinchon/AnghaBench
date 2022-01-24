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
typedef  scalar_t__ uint32_t ;
struct nfsm_chain {int dummy; } ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ NFSX_UNSIGNED ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct nfsm_chain*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct nfsm_chain*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  xdrpad ; 

__attribute__((used)) static errno_t
FUNC10(gss_ctx_id_t ctx, mbuf_t *mb_head, uint32_t seqnum, uint32_t *len)
{
	uint32_t error;
	uint32_t major;
	struct nfsm_chain nmc;
	uint32_t pad;
	uint32_t length;

	error = FUNC8(mb_head, seqnum);
	if (error)
		return (error);

	length = FUNC1(*mb_head);
	major = FUNC0(&error, ctx, 1, 0, mb_head, 0, length, NULL);
	if (major != GSS_S_COMPLETE)
		return (error);

	length = FUNC1(*mb_head);
	if (len)
		*len = length;
	pad = FUNC7(length);

	/* Prepend the opaque length of rep rpc_gss_priv_data */
	error = FUNC9(mb_head, length);

	if (error)
		return (error);
	if (pad) {
		FUNC5(error, &nmc, *mb_head);
		/* Advance the opauque size of length and length data */
		FUNC3(error, &nmc, NFSX_UNSIGNED + length);
		FUNC6(error, &nmc);
		FUNC2(error, &nmc, xdrpad, pad);
		FUNC4(error, &nmc);
	}

	return (error);
}