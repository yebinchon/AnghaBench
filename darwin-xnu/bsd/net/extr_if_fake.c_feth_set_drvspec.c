
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint32_t ;
typedef int u_int32_t ;
struct if_fake_request {char* iffr_peer_name; int iffr_dequeue_stall; } ;
typedef int * ifnet_t ;


 int EINVAL ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int FAKE_ETHER_NAME ;
 int IFNAMSIZ ;
 int IFT_ETHER ;



 int feth_config (int *,int *) ;
 int feth_enable_dequeue_stall (int *,int ) ;
 int feth_set_media (int *,struct if_fake_request*) ;
 int if_fake_request_copyin (int ,struct if_fake_request*,int ) ;
 int ifnet_name (int *) ;
 int ifnet_type (int *) ;
 int * ifunit (char*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
feth_set_drvspec(ifnet_t ifp, uint32_t cmd, u_int32_t len,
   user_addr_t user_addr)
{
 int error;
 struct if_fake_request iffr;
 ifnet_t peer;

 switch (cmd) {
 case 128:
  error = if_fake_request_copyin(user_addr, &iffr, len);
  if (error != 0) {
   break;
  }
  if (iffr.iffr_peer_name[0] == '\0') {
   error = feth_config(ifp, ((void*)0));
   break;
  }


  iffr.iffr_peer_name[IFNAMSIZ - 1] = '\0';
  peer = ifunit(iffr.iffr_peer_name);
  if (peer == ((void*)0)) {
   error = ENXIO;
   break;
  }
  if (ifnet_type(peer) != IFT_ETHER) {
   error = EINVAL;
   break;
  }
  if (strcmp(ifnet_name(peer), FAKE_ETHER_NAME) != 0) {
   error = EINVAL;
   break;
  }
  error = feth_config(ifp, peer);
  break;
 case 129:
  error = if_fake_request_copyin(user_addr, &iffr, len);
  if (error != 0) {
   break;
  }
  error = feth_set_media(ifp, &iffr);
  break;
 case 130:
  error = if_fake_request_copyin(user_addr, &iffr, len);
  if (error != 0) {
   break;
  }
  error = feth_enable_dequeue_stall(ifp,
      iffr.iffr_dequeue_stall);
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}
