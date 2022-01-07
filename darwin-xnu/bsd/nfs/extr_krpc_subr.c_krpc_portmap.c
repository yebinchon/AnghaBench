
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef void* u_int16_t ;
typedef int u_int ;
struct sockaddr_in {void* sin_port; } ;
typedef int mbuf_t ;


 int EPROGUNAVAIL ;
 int MBUF_TYPE_DATA ;
 int MBUF_WAITOK ;
 int PMAPPORT ;
 int PMAPPROC_GETPORT ;
 scalar_t__ PMAPPROG ;
 int PMAPVERS ;
 int SOCK_DGRAM ;
 void* htonl (scalar_t__) ;
 void* htons (int ) ;
 int krpc_call (struct sockaddr_in*,int ,scalar_t__,int ,int ,int *,int *) ;
 void* mbuf_data (int ) ;
 int mbuf_freem (int ) ;
 int mbuf_gethdr (int ,int ,int *) ;
 int mbuf_len (int ) ;
 int mbuf_pkthdr_setlen (int ,int) ;
 int mbuf_setlen (int ,int) ;

int
krpc_portmap(
 struct sockaddr_in *sin,
 u_int prog, u_int vers, u_int proto,
 u_int16_t *portp)
{
 struct sdata {
  u_int32_t prog;
  u_int32_t vers;
  u_int32_t proto;
  u_int32_t port;
 } *sdata;
 struct rdata {
  u_int16_t pad;
  u_int16_t port;
 } *rdata;
 mbuf_t m;
 int error;


 if (prog == PMAPPROG) {
  *portp = htons(PMAPPORT);
  return 0;
 }

 error = mbuf_gethdr(MBUF_WAITOK, MBUF_TYPE_DATA, &m);
 if (error)
  return error;
 mbuf_setlen(m, sizeof(*sdata));
 mbuf_pkthdr_setlen(m, sizeof(*sdata));
 sdata = mbuf_data(m);


 sdata->prog = htonl(prog);
 sdata->vers = htonl(vers);
 sdata->proto = htonl(proto);
 sdata->port = 0;

 sin->sin_port = htons(PMAPPORT);
 error = krpc_call(sin, SOCK_DGRAM, PMAPPROG, PMAPVERS, PMAPPROC_GETPORT, &m, ((void*)0));
 if (error)
  return error;

 rdata = mbuf_data(m);

 if (mbuf_len(m) >= sizeof(*rdata)) {
  *portp = rdata->port;
 }

 if (mbuf_len(m) < sizeof(*rdata) || !rdata->port)
  error = EPROGUNAVAIL;

 mbuf_freem(m);
 return (error);
}
