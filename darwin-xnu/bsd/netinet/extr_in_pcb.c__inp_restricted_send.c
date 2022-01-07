
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ IFNET_IS_AWDL_RESTRICTED (struct ifnet*) ;
 scalar_t__ IFNET_IS_CELLULAR (struct ifnet*) ;
 scalar_t__ IFNET_IS_EXPENSIVE (struct ifnet*) ;
 scalar_t__ IFNET_IS_INTCOPROC (struct ifnet*) ;
 int INP_AWDL_UNRESTRICTED (struct inpcb*) ;
 int INP_INTCOPROC_ALLOWED (struct inpcb*) ;
 scalar_t__ INP_NO_CELLULAR (struct inpcb*) ;
 scalar_t__ INP_NO_EXPENSIVE (struct inpcb*) ;
 int TRUE ;
 int VERIFY (int ) ;
 int sorestrictsend ;

__attribute__((used)) static boolean_t
_inp_restricted_send(struct inpcb *inp, struct ifnet *ifp)
{
 VERIFY(inp != ((void*)0));




 if (!sorestrictsend)
  return (FALSE);

 if (ifp == ((void*)0))
  return (FALSE);

 if (IFNET_IS_CELLULAR(ifp) && INP_NO_CELLULAR(inp))
  return (TRUE);

 if (IFNET_IS_EXPENSIVE(ifp) && INP_NO_EXPENSIVE(inp))
  return (TRUE);

 if (IFNET_IS_AWDL_RESTRICTED(ifp) && !INP_AWDL_UNRESTRICTED(inp))
  return (TRUE);

 if (IFNET_IS_INTCOPROC(ifp) && !INP_INTCOPROC_ALLOWED(inp))
  return (TRUE);

 return (FALSE);
}
