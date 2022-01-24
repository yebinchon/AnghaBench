#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct nfsm_chain {int /*<<< orphan*/  nmc_mhead; } ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ NFSX_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct nfsm_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct nfsm_chain*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,struct nfsm_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct nfsm_chain*) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static errno_t
FUNC13(gss_ctx_id_t ctx, mbuf_t *mb_head, uint32_t seqnum, uint32_t *len)
{
	uint32_t error;
	uint32_t major;
	uint32_t length;
	gss_buffer_desc mic;
	struct nfsm_chain nmc;

	/* Length of the argument or result */
	length = FUNC3(*mb_head);
	if (len)
		*len = length;
	error = FUNC11(mb_head, seqnum);
	if (error)
		return (error);

	/*
	 * length is the length of the rpc_gss_data
	 */
	length += NFSX_UNSIGNED;  /* Add the sequence number to the length */
	major = FUNC1(&error, ctx, 0, *mb_head, 0, length, &mic);
	if (major != GSS_S_COMPLETE) {
		FUNC10("gss_krb5_get_mic_mbuf failed %d\n", error);
		return (error);
	}

	error = FUNC12(mb_head, length);
	if (error)
		return (error);

	FUNC8(error, &nmc, *mb_head);
	/* Append GSS mic token by advancing rpc_gss_data_t length + NFSX_UNSIGNED (size of the length field) */
	FUNC6(error, &nmc, length + NFSX_UNSIGNED);
	FUNC9(error, &nmc); // Force the mic into its own sub chain.
	FUNC4(error, &nmc, mic.length);
	FUNC5(error, &nmc, mic.value, mic.length);
	FUNC7(error, &nmc);
	FUNC2(NULL, &mic);

//	printmbuf("rpc_gss_integ_data_create done", *mb_head, 0, 0);
	FUNC0(nmc.nmc_mhead == *mb_head);

	return (error);
}