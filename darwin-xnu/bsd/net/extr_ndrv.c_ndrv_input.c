
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct socket {int so_rcv; } ;
struct sockaddr_dl {int sdl_len; int sdl_alen; int sdl_data; scalar_t__ sdl_slen; scalar_t__ sdl_nlen; int sdl_type; scalar_t__ sdl_index; int sdl_family; } ;
struct sockaddr {int dummy; } ;
struct ndrv_cb {struct socket* nd_socket; } ;
struct mbuf {int dummy; } ;
typedef int protocol_family_t ;
typedef TYPE_1__* mbuf_t ;
typedef int ifnet_t ;
typedef int errno_t ;
struct TYPE_8__ {int dom_mtx; } ;
struct TYPE_7__ {int * m_data; } ;


 int AF_NDRV ;
 int EJUSTRETURN ;
 int ENOENT ;
 int IFT_ETHER ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int M_NOWAIT ;
 int bcopy (char*,int *,int) ;
 int ifnet_hdrlen (int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 TYPE_1__* m_prepend (TYPE_1__*,int,int ) ;
 struct ndrv_cb* ndrv_find_inbound (int ,int ) ;
 TYPE_3__* ndrvdomain ;
 scalar_t__ sbappendaddr (int *,struct sockaddr*,TYPE_1__*,struct mbuf*,int*) ;
 int sorwakeup (struct socket*) ;

__attribute__((used)) static errno_t
ndrv_input(
 ifnet_t ifp,
 protocol_family_t proto_family,
 mbuf_t m,
 char *frame_header)
{
 struct socket *so;
 struct sockaddr_dl ndrvsrc;
 struct ndrv_cb *np;
 int error = 0;

    ndrvsrc.sdl_len = sizeof (struct sockaddr_dl);
    ndrvsrc.sdl_family = AF_NDRV;
    ndrvsrc.sdl_index = 0;



    ndrvsrc.sdl_type = IFT_ETHER;
    ndrvsrc.sdl_nlen = 0;
    ndrvsrc.sdl_alen = 6;
    ndrvsrc.sdl_slen = 0;
    bcopy(frame_header, &ndrvsrc.sdl_data, 6);

 np = ndrv_find_inbound(ifp, proto_family);
 if (np == ((void*)0))
 {
  return(ENOENT);
 }
 so = np->nd_socket;

    m = m_prepend(m, ifnet_hdrlen(ifp), M_NOWAIT);
    if (m == ((void*)0))
        return EJUSTRETURN;
    bcopy(frame_header, m->m_data, ifnet_hdrlen(ifp));

 LCK_MTX_ASSERT(ndrvdomain->dom_mtx, LCK_MTX_ASSERT_NOTOWNED);
 lck_mtx_lock(ndrvdomain->dom_mtx);
 if (sbappendaddr(&(so->so_rcv), (struct sockaddr *)&ndrvsrc,
       m, (struct mbuf *)0, &error) != 0) {
  sorwakeup(so);
 }
 lck_mtx_unlock(ndrvdomain->dom_mtx);
 return 0;
}
