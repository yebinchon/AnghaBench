#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  TYPE_4__* lucid_context_version_t ;
typedef  int /*<<< orphan*/  gss_qop_t ;
typedef  TYPE_5__* gss_ctx_id_t ;
struct TYPE_10__ {int proto; } ;
struct TYPE_11__ {TYPE_2__ key_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  etype; } ;
struct TYPE_13__ {TYPE_3__ gss_lucid_ctx; TYPE_1__ gss_cryptor; } ;
struct TYPE_12__ {int version; } ;

/* Variables and functions */
 scalar_t__ ENOTSUP ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ GSS_S_NO_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__*,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t,int*) ; 
 scalar_t__ FUNC2 (scalar_t__*,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,size_t*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

uint32_t
FUNC5(uint32_t *minor,	/* minor_status */
		   gss_ctx_id_t ctx,	/* context_handle */
		   int conf_flag,	/* conf_req_flag */
		   gss_qop_t qop,	/* qop_req */
		   mbuf_t *mbp,		/* input/output message_buffer */
		   size_t offset,	/* offset */
		   size_t len,		/* length */
		   int *conf_state	/* conf state */)
{
	uint32_t major, minor_stat = 0;
	mbuf_t smb, tmb;
	int conf_val = 0;

	if (minor == NULL)
		minor = &minor_stat;
	if (conf_state == NULL)
		conf_state = &conf_val;

	*minor = 0;

	/* Validate context */
	if (ctx == NULL || ((lucid_context_version_t)ctx)->version != 1)
		return (GSS_S_NO_CONTEXT);

	if (!FUNC4(ctx->gss_lucid_ctx.key_data.proto, ctx->gss_cryptor.etype)) {
		*minor = ENOTSUP;
		return (GSS_S_FAILURE);
	}

	FUNC3(*mbp, offset, &len, &smb, &tmb, 0);

	switch(ctx->gss_lucid_ctx.key_data.proto) {
	case 0:
		/* RFC 1964 DES3 case */
		major = FUNC1(minor, ctx, conf_flag, qop, &smb, len, conf_state);
		break;
	case 1:
		/* RFC 4121 CFX case */
		major = FUNC2(minor, ctx, conf_flag, qop, &smb, len, conf_state);
		break;
	}

	if (offset)
		FUNC0(*mbp, smb, tmb);
	else {
		*mbp = smb;
		FUNC0(smb, tmb, NULL);
	}

	return (major);
}