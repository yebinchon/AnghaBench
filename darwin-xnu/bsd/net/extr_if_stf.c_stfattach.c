
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct stf_softc {int sc_if; int sc_ro_mtx; struct encaptab const* encap_cookie; } ;
struct ifnet_init_eparams {int len; char* name; int set_bpf_tap; int ioctl; struct stf_softc* softc; int del_proto; int add_proto; int demux; int output; int family; int type; scalar_t__ unit; int flags; int ver; } ;
struct encaptab {int dummy; } ;
typedef int stf_init ;


 int AF_INET ;
 int APPLE_IF_FAM_STF ;
 int DLT_NULL ;
 int FREE (struct stf_softc*,int ) ;
 int IFF_LINK2 ;
 int IFNET_FAMILY_STF ;
 int IFNET_INIT_CURRENT_VERSION ;
 int IFNET_INIT_LEGACY ;
 int IFT_STF ;
 int IPPROTO_IPV6 ;
 int IPV6_MMTU ;
 int LCK_ATTR_NULL ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PF_INET6 ;
 struct stf_softc* _MALLOC (int,int ,int) ;
 int bpfattach (int ,int ,int) ;
 int bzero (struct ifnet_init_eparams*,int) ;
 struct encaptab* encap_attach_func (int ,int ,int ,int *,struct stf_softc*) ;
 int encap_detach (struct encaptab const*) ;
 int ifnet_allocate_extended (struct ifnet_init_eparams*,int *) ;
 int ifnet_attach (int ,int *) ;
 int ifnet_release (int ) ;
 int ifnet_set_flags (int ,int,int) ;
 int ifnet_set_mtu (int ,int ) ;
 int in_stf_protosw ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int mac_ifnet_label_init (int *) ;
 int printf (char*,...) ;
 int proto_register_plumber (int ,int ,int ,int *) ;
 int stf_add_proto ;
 int stf_attach_inet6 ;
 int stf_del_proto ;
 int stf_demux ;
 int stf_encapcheck ;
 int stf_ioctl ;
 int stf_mtx_grp ;
 int stf_output ;
 int stf_set_bpf_tap ;
 int stfinit () ;

void
stfattach(void)
{
 struct stf_softc *sc;
 int error;
 const struct encaptab *p;
 struct ifnet_init_eparams stf_init;

 stfinit();

 error = proto_register_plumber(PF_INET6, APPLE_IF_FAM_STF,
     stf_attach_inet6, ((void*)0));
 if (error != 0)
  printf("proto_register_plumber failed for AF_INET6 error=%d\n", error);

 sc = _MALLOC(sizeof(struct stf_softc), M_DEVBUF, M_WAITOK | M_ZERO);
 if (sc == 0) {
  printf("stf softc attach failed\n" );
  return;
 }

 p = encap_attach_func(AF_INET, IPPROTO_IPV6, stf_encapcheck,
     &in_stf_protosw, sc);
 if (p == ((void*)0)) {
  printf("sftattach encap_attach_func failed\n");
  FREE(sc, M_DEVBUF);
  return;
 }
 sc->encap_cookie = p;
 lck_mtx_init(&sc->sc_ro_mtx, stf_mtx_grp, LCK_ATTR_NULL);

 bzero(&stf_init, sizeof(stf_init));
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

 error = ifnet_allocate_extended(&stf_init, &sc->sc_if);
 if (error != 0) {
  printf("stfattach, ifnet_allocate failed - %d\n", error);
  encap_detach(sc->encap_cookie);
  lck_mtx_destroy(&sc->sc_ro_mtx, stf_mtx_grp);
  FREE(sc, M_DEVBUF);
  return;
 }
 ifnet_set_mtu(sc->sc_if, IPV6_MMTU);
 ifnet_set_flags(sc->sc_if, 0, 0xffff);
 error = ifnet_attach(sc->sc_if, ((void*)0));
 if (error != 0) {
  printf("stfattach: ifnet_attach returned error=%d\n", error);
  encap_detach(sc->encap_cookie);
  ifnet_release(sc->sc_if);
  lck_mtx_destroy(&sc->sc_ro_mtx, stf_mtx_grp);
  FREE(sc, M_DEVBUF);
  return;
 }

 bpfattach(sc->sc_if, DLT_NULL, sizeof(u_int));

 return;
}
