#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct nstat_ifnet_cookie {struct ifnet* ifp; } ;
struct TYPE_5__ {int ifd_len; int /*<<< orphan*/  ifd_desc; } ;
struct ifnet {TYPE_1__ if_desc; int /*<<< orphan*/  if_type; int /*<<< orphan*/  if_data_threshold; int /*<<< orphan*/  if_index; int /*<<< orphan*/  if_xname; } ;
typedef  scalar_t__ nstat_provider_cookie_t ;
struct TYPE_6__ {int /*<<< orphan*/  description; int /*<<< orphan*/  type; int /*<<< orphan*/  threshold; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ nstat_ifnet_descriptor ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static errno_t
FUNC7(
	nstat_provider_cookie_t	cookie,
	void			*data,
	u_int32_t		len)
{
	nstat_ifnet_descriptor *desc = (nstat_ifnet_descriptor *)data;
	struct nstat_ifnet_cookie *ifcookie =
	    (struct nstat_ifnet_cookie *)cookie;
	struct ifnet *ifp = ifcookie->ifp;

	if (len < sizeof(nstat_ifnet_descriptor))
		return EINVAL;

	if (FUNC5(cookie))
		return EINVAL;

	FUNC0(desc, sizeof(*desc));
	FUNC2(ifp);
	FUNC6(desc->name, ifp->if_xname, sizeof(desc->name));
	desc->ifindex = ifp->if_index;
	desc->threshold = ifp->if_data_threshold;
	desc->type = ifp->if_type;
	if (ifp->if_desc.ifd_len < sizeof(desc->description))
		FUNC3(desc->description, ifp->if_desc.ifd_desc,
	    	    sizeof(desc->description));
	FUNC4(ifp, desc);
	FUNC1(ifp);
	return 0;
}