
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ifnet {int dummy; } ;


 int bpf_attach (struct ifnet*,int ,int ,int *,int *) ;

void
bpfattach(struct ifnet *ifp, u_int dlt, u_int hdrlen)
{
 bpf_attach(ifp, dlt, hdrlen, ((void*)0), ((void*)0));
}
