
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int8_t ;
struct ifaddr {int ** ifa_addr; } ;
typedef int sdlbuf ;
typedef int kauth_cred_t ;
typedef TYPE_1__* ifnet_t ;
typedef int errno_t ;
struct TYPE_6__ {int sdl_len; } ;
struct TYPE_5__ {struct ifaddr* if_lladdr; } ;


 int EINVAL ;
 int EMSGSIZE ;
 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_UNLOCK (struct ifaddr*) ;
 TYPE_3__* SDL (int **) ;
 int SOCK_MAXADDRLEN ;
 int _CASSERT (int) ;
 int bcopy (int const*,void*,size_t) ;
 int bzero (void*,size_t) ;
 int * dlil_ifaddr_bytes (TYPE_3__*,size_t*,int *) ;

__attribute__((used)) static errno_t
ifnet_lladdr_copy_bytes_internal(ifnet_t interface, void *lladdr,
    size_t lladdr_len, kauth_cred_t *credp)
{
 const u_int8_t *bytes;
 size_t bytes_len;
 struct ifaddr *ifa;
 uint8_t sdlbuf[SOCK_MAXADDRLEN + 1];
 errno_t error = 0;





 _CASSERT(sizeof (sdlbuf) == (SOCK_MAXADDRLEN + 1));

 if (interface == ((void*)0) || lladdr == ((void*)0))
  return (EINVAL);

 ifa = interface->if_lladdr;
 IFA_LOCK_SPIN(ifa);
 bcopy(ifa->ifa_addr, &sdlbuf, SDL(ifa->ifa_addr)->sdl_len);
 IFA_UNLOCK(ifa);

 bytes = dlil_ifaddr_bytes(SDL(&sdlbuf), &bytes_len, credp);
 if (bytes_len != lladdr_len) {
  bzero(lladdr, lladdr_len);
  error = EMSGSIZE;
 } else {
  bcopy(bytes, lladdr, bytes_len);
 }

 return (error);
}
