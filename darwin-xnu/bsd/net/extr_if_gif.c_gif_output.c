
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sockaddr {int sa_family; } ;
struct gif_softc {int gif_proto; struct sockaddr* gif_psrc; struct sockaddr* gif_pdst; } ;
typedef TYPE_2__* mbuf_t ;
typedef int ifnet_t ;
typedef int errno_t ;
struct TYPE_8__ {int len; } ;
struct TYPE_9__ {int m_flags; TYPE_1__ m_pkthdr; } ;




 int EJUSTRETURN ;
 int ENETDOWN ;
 int GIF_LOCK (struct gif_softc*) ;
 int GIF_UNLOCK (struct gif_softc*) ;
 int IFF_UP ;
 int M_BCAST ;
 int M_MCAST ;
 int bpf_tap_out (int ,int ,TYPE_2__*,int *,int) ;
 int ifnet_flags (int ) ;
 struct gif_softc* ifnet_softc (int ) ;
 int ifnet_stat_increment_out (int ,int,int ,int) ;
 int ifnet_touch_lastchange (int ) ;
 int in6_gif_output (int ,int ,TYPE_2__*,int *) ;
 int in_gif_output (int ,int ,TYPE_2__*,int *) ;
 int m_freem (TYPE_2__*) ;

__attribute__((used)) static errno_t
gif_output(
 ifnet_t ifp,
 mbuf_t m)
{
 struct gif_softc *sc = ifnet_softc(ifp);
 struct sockaddr *gif_psrc;
 struct sockaddr *gif_pdst;
 int error = 0;

 GIF_LOCK(sc);
 gif_psrc = sc->gif_psrc;
 gif_pdst = sc->gif_pdst;
 GIF_UNLOCK(sc);






 m->m_flags &= ~(M_BCAST|M_MCAST);
 if (!(ifnet_flags(ifp) & IFF_UP) ||
     gif_psrc == ((void*)0) || gif_pdst == ((void*)0)) {
  ifnet_touch_lastchange(ifp);
  m_freem(m);
  error = ENETDOWN;
  goto end;
 }

 bpf_tap_out(ifp, 0, m, &sc->gif_proto, sizeof (sc->gif_proto));

 GIF_LOCK(sc);






 switch (sc->gif_psrc->sa_family) {
 default:
  error = ENETDOWN;
  break;
 }

 GIF_UNLOCK(sc);
end:
 if (error) {

  ifnet_stat_increment_out(ifp, 0, 0, 1);
 } else {
  ifnet_stat_increment_out(ifp, 1, m->m_pkthdr.len, 0);
 }
 if (error == 0)
  error = EJUSTRETURN;
 return (error);
}
