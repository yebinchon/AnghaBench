#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__* TOK_ID; scalar_t__ Filler; int Flags; int* EC; int* RRC; int /*<<< orphan*/  SND_SEQ; } ;
typedef  TYPE_4__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  seq ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  TYPE_5__* lucid_context_t ;
typedef  scalar_t__ gss_qop_t ;
typedef  TYPE_6__* gss_ctx_id_t ;
typedef  TYPE_4__ gss_cfx_wrap_token_desc ;
struct TYPE_26__ {int length; TYPE_4__* value; } ;
typedef  TYPE_8__ gss_buffer_desc ;
typedef  TYPE_9__* crypto_ctx_t ;
struct TYPE_27__ {int digest_size; } ;
struct TYPE_20__ {scalar_t__ acceptor_subkey; } ;
struct TYPE_21__ {TYPE_1__ data_4121; } ;
struct TYPE_22__ {TYPE_2__ lucid_protocol_u; } ;
struct TYPE_24__ {int initiate; int /*<<< orphan*/  recv_seq; TYPE_3__ key_data; } ;
struct TYPE_25__ {TYPE_9__ gss_cryptor; TYPE_5__ gss_lucid_ctx; } ;
struct TYPE_19__ {scalar_t__* TOK_ID; scalar_t__ Filler; } ;

/* Variables and functions */
 int CFXAcceptorSubkey ; 
 int CFXSealed ; 
 int CFXSentByAcceptor ; 
 int EBADRPC ; 
 scalar_t__ GSS_C_QOP_DEFAULT ; 
 scalar_t__ GSS_C_QOP_REVERSE ; 
 int GSS_S_COMPLETE ; 
 int GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_9__*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,TYPE_8__*,TYPE_4__*,int*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,int,TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_10__ wrap_cfx_token ; 

uint32_t
FUNC9(uint32_t * minor,	/* minor_status */
			 gss_ctx_id_t ctx,	/* context_handle */
			 mbuf_t *mbp,		/* input/output message_buffer */
			 size_t len,		/* mbuf chain length */
			 int *conf_flag,	/* conf_state */
			 gss_qop_t *qop		/* qop state */)
{
	gss_cfx_wrap_token_desc token;
	lucid_context_t lctx = &ctx->gss_lucid_ctx;
	crypto_ctx_t cctx = &ctx->gss_cryptor;
	int error, conf;
	uint16_t ec = 0 , rrc = 0;
	uint64_t seq;
	int reverse = (*qop == GSS_C_QOP_REVERSE);
	int initiate = lctx->initiate ? (reverse ? 0 : 1) : (reverse ? 1 : 0);

	error = FUNC4(*mbp, 0, sizeof (gss_cfx_wrap_token_desc), &token);
	FUNC1(*mbp, sizeof (gss_cfx_wrap_token_desc));
	len -= sizeof (gss_cfx_wrap_token_desc);

	/* Check for valid token */
	if (token.TOK_ID[0] != wrap_cfx_token.TOK_ID[0] ||
	    token.TOK_ID[1] != wrap_cfx_token.TOK_ID[1] ||
	    token.Filler != wrap_cfx_token.Filler) {
		FUNC8("Token id does not match\n");
		goto badrpc;
	}
	if ((initiate && !(token.Flags & CFXSentByAcceptor)) ||
	    (lctx->key_data.lucid_protocol_u.data_4121.acceptor_subkey && !(token.Flags & CFXAcceptorSubkey))) {
		FUNC8("Bad flags %x\n", token.Flags);
		goto badrpc;
	}

	/* XXX Sequence replay detection */
	FUNC6(&seq, token.SND_SEQ, sizeof (seq));
	seq = FUNC7(seq);
	lctx->recv_seq = seq;

	ec = (token.EC[0] << 8) | token.EC[1];
	rrc = (token.RRC[0] << 8) | token.RRC[1];
	*qop = GSS_C_QOP_DEFAULT;
	conf = ((token.Flags & CFXSealed) == CFXSealed);
	if (conf_flag)
		*conf_flag = conf;
	if (conf) {
		gss_cfx_wrap_token_desc etoken;

		if (rrc)  /* Handle Right rotation count */
			FUNC0(*mbp, rrc);
		error = FUNC2(cctx, mbp, &len, 0, reverse);
		if (error) {
			FUNC8("krb5_cfx_crypt_mbuf %d\n", error);
			*minor = error;
			return (GSS_S_FAILURE);
		}
		if (len >= sizeof(gss_cfx_wrap_token_desc))
			len -= sizeof(gss_cfx_wrap_token_desc);
		else
			goto badrpc;
		FUNC4(*mbp, len, sizeof(gss_cfx_wrap_token_desc), &etoken);
		/* Verify etoken with the token wich should be the same, except the rc field is always zero */
		token.RRC[0] = token.RRC[1] = 0;
		if (FUNC5(&token, &etoken, sizeof (gss_cfx_wrap_token_desc)) != 0) {
			FUNC8("Encrypted token mismach\n");
			goto badrpc;
		}
		/* strip the encrypted token and any pad bytes */
		FUNC1(*mbp, -(sizeof(gss_cfx_wrap_token_desc) + ec));
		len -= (sizeof(gss_cfx_wrap_token_desc) + ec);
	} else {
		uint8_t digest[cctx->digest_size];
		int verf;
		gss_buffer_desc header;

		if (ec != cctx->digest_size || len >= cctx->digest_size)
			goto badrpc;
		len -= cctx->digest_size;
		FUNC4(*mbp, len, cctx->digest_size, digest);
		FUNC1(*mbp, -cctx->digest_size);
		/* When calculating the mic header fields ec and rcc must be zero */
		token.EC[0] = token.EC[1] = token.RRC[0] = token.RRC[1] = 0;
		header.value = &token;
		header.length = sizeof(gss_cfx_wrap_token_desc);
		error = FUNC3(cctx, NULL, *mbp, 0, len, &header, digest, &verf, 1, reverse);
		if (error)
			goto badrpc;
	}
	return (GSS_S_COMPLETE);

badrpc:
	*minor = EBADRPC;
	return (GSS_S_FAILURE);
}