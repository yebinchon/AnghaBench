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
typedef  int /*<<< orphan*/  u_int ;
struct stf_softc {int /*<<< orphan*/  sc_if; int /*<<< orphan*/  sc_ro_mtx; struct encaptab const* encap_cookie; } ;
struct ifnet_init_eparams {int len; char* name; int /*<<< orphan*/  set_bpf_tap; int /*<<< orphan*/  ioctl; struct stf_softc* softc; int /*<<< orphan*/  del_proto; int /*<<< orphan*/  add_proto; int /*<<< orphan*/  demux; int /*<<< orphan*/  output; int /*<<< orphan*/  family; int /*<<< orphan*/  type; scalar_t__ unit; int /*<<< orphan*/  flags; int /*<<< orphan*/  ver; } ;
struct encaptab {int dummy; } ;
typedef  int /*<<< orphan*/  stf_init ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  APPLE_IF_FAM_STF ; 
 int /*<<< orphan*/  DLT_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct stf_softc*,int /*<<< orphan*/ ) ; 
 int IFF_LINK2 ; 
 int /*<<< orphan*/  IFNET_FAMILY_STF ; 
 int /*<<< orphan*/  IFNET_INIT_CURRENT_VERSION ; 
 int /*<<< orphan*/  IFNET_INIT_LEGACY ; 
 int /*<<< orphan*/  IFT_STF ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_MMTU ; 
 int /*<<< orphan*/  LCK_ATTR_NULL ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PF_INET6 ; 
 struct stf_softc* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet_init_eparams*,int) ; 
 struct encaptab* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct stf_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct encaptab const*) ; 
 int FUNC6 (struct ifnet_init_eparams*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_stf_protosw ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stf_add_proto ; 
 int /*<<< orphan*/  stf_attach_inet6 ; 
 int /*<<< orphan*/  stf_del_proto ; 
 int /*<<< orphan*/  stf_demux ; 
 int /*<<< orphan*/  stf_encapcheck ; 
 int /*<<< orphan*/  stf_ioctl ; 
 int /*<<< orphan*/  stf_mtx_grp ; 
 int /*<<< orphan*/  stf_output ; 
 int /*<<< orphan*/  stf_set_bpf_tap ; 
 int /*<<< orphan*/  FUNC16 () ; 

void
FUNC17(void)
{
	struct stf_softc *sc;
	int error;
	const struct encaptab *p;
	struct ifnet_init_eparams	stf_init;

	FUNC16();

	error = FUNC15(PF_INET6, APPLE_IF_FAM_STF,
	    stf_attach_inet6, NULL);
	if (error != 0)
		FUNC14("proto_register_plumber failed for AF_INET6 error=%d\n", error);

	sc = FUNC1(sizeof(struct stf_softc), M_DEVBUF, M_WAITOK | M_ZERO);
	if (sc == 0) {
		FUNC14("stf softc attach failed\n" );
		return;
	}
	
	p = FUNC4(AF_INET, IPPROTO_IPV6, stf_encapcheck,
	    &in_stf_protosw, sc);
	if (p == NULL) {
		FUNC14("sftattach encap_attach_func failed\n");
		FUNC0(sc, M_DEVBUF);
		return;
	}
	sc->encap_cookie = p;
	FUNC12(&sc->sc_ro_mtx, stf_mtx_grp, LCK_ATTR_NULL);
	
	FUNC3(&stf_init, sizeof(stf_init));
	stf_init.ver = IFNET_INIT_CURRENT_VERSION;
	stf_init.len = sizeof (stf_init);
	stf_init.flags = IFNET_INIT_LEGACY;
	stf_init.name = "stf";
	stf_init.unit = 0;
	stf_init.type = IFT_STF;
	stf_init.family = IFNET_FAMILY_STF;
	stf_init.output = stf_output;
	stf_init.demux = stf_demux;
	stf_init.add_proto = stf_add_proto;
	stf_init.del_proto = stf_del_proto;
	stf_init.softc = sc;
	stf_init.ioctl = stf_ioctl;
	stf_init.set_bpf_tap = stf_set_bpf_tap;
	
	error = FUNC6(&stf_init, &sc->sc_if);
	if (error != 0) {
		FUNC14("stfattach, ifnet_allocate failed - %d\n", error);
		FUNC5(sc->encap_cookie);
		FUNC11(&sc->sc_ro_mtx, stf_mtx_grp);
		FUNC0(sc, M_DEVBUF);
		return;
	}
	FUNC10(sc->sc_if, IPV6_MMTU);
	FUNC9(sc->sc_if, 0, 0xffff); /* clear all flags */
#if 0
	/* turn off ingress filter */
	ifnet_set_flags(sc->sc_if, IFF_LINK2, IFF_LINK2);
#endif

#if CONFIG_MACF_NET
	mac_ifnet_label_init(&sc->sc_if);
#endif
	
	error = FUNC7(sc->sc_if, NULL);
	if (error != 0) {
		FUNC14("stfattach: ifnet_attach returned error=%d\n", error);
		FUNC5(sc->encap_cookie);
		FUNC8(sc->sc_if);
		FUNC11(&sc->sc_ro_mtx, stf_mtx_grp);
		FUNC0(sc, M_DEVBUF);
		return;
	}
	
	FUNC2(sc->sc_if, DLT_NULL, sizeof(u_int));
	
	return;
}