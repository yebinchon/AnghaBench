
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndrv_cb {scalar_t__ nd_proto_family; int nd_if; } ;


 int EINVAL ;
 scalar_t__ PF_NDRV ;
 int ifnet_detach_protocol (int ,scalar_t__) ;

int
ndrv_delspec(struct ndrv_cb *np)
{
    int result = 0;

    if (np->nd_proto_family == PF_NDRV ||
     np->nd_proto_family == 0)
        return EINVAL;


    result = ifnet_detach_protocol(np->nd_if, np->nd_proto_family);
    np->nd_proto_family = PF_NDRV;

 return result;
}
