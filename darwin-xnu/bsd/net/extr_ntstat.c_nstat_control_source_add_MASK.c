#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int64_t ;
typedef  int u_int32_t ;
typedef  scalar_t__ nstat_src_ref_t ;
struct TYPE_18__ {scalar_t__ srcref; int filter; TYPE_6__* ns_control; scalar_t__ seq; int /*<<< orphan*/  cookie; TYPE_4__* provider; } ;
typedef  TYPE_3__ nstat_src ;
typedef  int /*<<< orphan*/  nstat_provider_cookie_t ;
struct TYPE_19__ {size_t nstat_provider_id; } ;
typedef  TYPE_4__ nstat_provider ;
struct TYPE_17__ {int context; int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct TYPE_20__ {size_t provider; scalar_t__ srcref; TYPE_2__ hdr; } ;
typedef  TYPE_5__ nstat_msg_src_added ;
struct TYPE_21__ {int ncs_flags; int /*<<< orphan*/  ncs_mtx; int /*<<< orphan*/  ncs_src_queue; int /*<<< orphan*/  ncs_unit; int /*<<< orphan*/  ncs_kctl; TYPE_1__* ncs_provider_filters; } ;
typedef  TYPE_6__ nstat_control_state ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  scalar_t__ errno_t ;
typedef  int boolean_t ;
struct TYPE_22__ {int nstat_srcaddedfailures; } ;
struct TYPE_16__ {int npf_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_DATA_EOR ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  MBUF_DONTWAIT ; 
 int NSTAT_FILTER_NOZEROBYTES ; 
 int NSTAT_FILTER_PROVIDER_NOZEROBYTES ; 
 int NSTAT_FILTER_SUPPRESS_SRC_ADDED ; 
 int NSTAT_FILTER_TCP_NO_EARLY_CLOSE ; 
 int NSTAT_FLAG_CLEANUP ; 
 int /*<<< orphan*/  NSTAT_MSG_TYPE_SRC_ADDED ; 
 scalar_t__ NSTAT_SRC_REF_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,unsigned int*,int /*<<< orphan*/ **) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ns_control_link ; 
 scalar_t__ FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  nstat_malloc_tag ; 
 TYPE_7__ nstat_stats ; 

__attribute__((used)) static errno_t
FUNC14(
	u_int64_t			context,
	nstat_control_state		*state,
	nstat_provider			*provider,
	nstat_provider_cookie_t		cookie)
{
	// Fill out source added message if appropriate
	mbuf_t			msg = NULL;
	nstat_src_ref_t		*srcrefp = NULL;

	u_int64_t		provider_filter_flagss =
	    state->ncs_provider_filters[provider->nstat_provider_id].npf_flags;
	boolean_t		tell_user =
	    ((provider_filter_flagss & NSTAT_FILTER_SUPPRESS_SRC_ADDED) == 0);
	u_int32_t		src_filter =
	    (provider_filter_flagss & NSTAT_FILTER_PROVIDER_NOZEROBYTES)
		? NSTAT_FILTER_NOZEROBYTES : 0;

	if (provider_filter_flagss & NSTAT_FILTER_TCP_NO_EARLY_CLOSE)
	{
		src_filter |= NSTAT_FILTER_TCP_NO_EARLY_CLOSE;
	}

	if (tell_user)
	{
		unsigned int one = 1;

		if (FUNC7(MBUF_DONTWAIT, sizeof(nstat_msg_src_added),
		    &one, &msg) != 0)
			return ENOMEM;

		FUNC12(msg, sizeof(nstat_msg_src_added));
		FUNC11(msg, FUNC10(msg));
		nstat_msg_src_added	*add = FUNC8(msg);
		FUNC3(add, sizeof(*add));
		add->hdr.type = NSTAT_MSG_TYPE_SRC_ADDED;
		add->hdr.length = FUNC10(msg);
		add->hdr.context = context;
		add->provider = provider->nstat_provider_id;
		srcrefp = &add->srcref;
	}

	// Allocate storage for the source
	nstat_src	*src = FUNC1(sizeof(*src), nstat_malloc_tag);
	if (src == NULL)
	{
		if (msg) FUNC9(msg);
		return ENOMEM;
	}

	// Fill in the source, including picking an unused source ref
	FUNC5(&state->ncs_mtx);

	src->srcref = FUNC13(state);
	if (srcrefp)
		*srcrefp = src->srcref;

	if (state->ncs_flags & NSTAT_FLAG_CLEANUP || src->srcref == NSTAT_SRC_REF_INVALID)
	{
		FUNC6(&state->ncs_mtx);
		FUNC0(src, sizeof(*src), nstat_malloc_tag);
		if (msg) FUNC9(msg);
		return EINVAL;
	}
	src->provider = provider;
	src->cookie = cookie;
	src->filter = src_filter;
	src->seq = 0;

	if (msg)
	{
		// send the source added message if appropriate
		errno_t result = FUNC4(state->ncs_kctl, state->ncs_unit, msg,
						CTL_DATA_EOR);
		if (result != 0)
		{
			nstat_stats.nstat_srcaddedfailures += 1;
			FUNC6(&state->ncs_mtx);
			FUNC0(src, sizeof(*src), nstat_malloc_tag);
			FUNC9(msg);
			return result;
		}
	}
	// Put the source in the list
	FUNC2(&state->ncs_src_queue, src, ns_control_link);
	src->ns_control = state;

	FUNC6(&state->ncs_mtx);

	return 0;
}