
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct ip {int ip_v; } ;
struct gif_softc {TYPE_2__* gif_pdst; TYPE_1__* gif_psrc; int gif_if; } ;
typedef int ip ;
struct TYPE_4__ {int sa_family; } ;
struct TYPE_3__ {int sa_family; } ;


 int AF_INET ;
 int AF_INET6 ;
 int GIF_LOCK (struct gif_softc*) ;
 int GIF_UNLOCK (struct gif_softc*) ;
 int IFF_UP ;


 int gif_encapcheck4 (struct mbuf const*,int,int,void*) ;
 int gif_encapcheck6 (struct mbuf const*,int,int,void*) ;
 int ifnet_flags (int ) ;
 int mbuf_copydata (struct mbuf*,int ,int,struct ip*) ;

__attribute__((used)) static int
gif_encapcheck(
 const struct mbuf *m,
 int off,
 int proto,
 void *arg)
{
 int error = 0;
 struct ip ip;
 struct gif_softc *sc;

 sc = (struct gif_softc *)arg;
 if (sc == ((void*)0))
  return (error);

 GIF_LOCK(sc);
 if ((ifnet_flags(sc->gif_if) & IFF_UP) == 0)
  goto done;


 if (!sc->gif_psrc || !sc->gif_pdst)
  goto done;

 switch (proto) {
 default:
  goto done;
 }

 mbuf_copydata((struct mbuf *)(size_t)m, 0, sizeof (ip), &ip);

 switch (ip.ip_v) {
 default:
  goto done;
 }
done:
 GIF_UNLOCK(sc);
 return (error);
}
