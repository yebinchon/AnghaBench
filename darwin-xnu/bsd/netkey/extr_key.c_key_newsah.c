
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct TYPE_5__ {int ss_family; } ;
struct TYPE_4__ {int ss_family; } ;
struct secasindex {TYPE_2__ dst; TYPE_1__ src; } ;
struct TYPE_6__ {int dst; int src; } ;
struct secashead {int state; int dir; scalar_t__ ipsec_if; int outgoing_if; TYPE_3__ saidx; } ;
typedef scalar_t__ ifnet_t ;




 void* IPSEC_PORT_ANY ;
 int LIST_INSERT_HEAD (int *,struct secashead*,int ) ;
 int SADB_SASTATE_MATURE ;
 int bcopy (struct secasindex*,TYPE_3__*,int) ;
 int chain ;
 int ifnet_reference (scalar_t__) ;
 int key_start_timehandler () ;
 struct secashead* keydb_newsecashead () ;
 int panic (char*) ;
 int sahtree ;

__attribute__((used)) static struct secashead *
key_newsah(struct secasindex *saidx,
     ifnet_t ipsec_if,
     u_int outgoing_if,
     u_int8_t dir)
{
 struct secashead *newsah;


 if (saidx == ((void*)0))
  panic("key_newsaidx: NULL pointer is passed.\n");

 newsah = keydb_newsecashead();
 if (newsah == ((void*)0))
  return ((void*)0);

 bcopy(saidx, &newsah->saidx, sizeof(newsah->saidx));


 switch (saidx->src.ss_family) {
  case 129:
   ((struct sockaddr_in *)(&newsah->saidx.src))->sin_port = IPSEC_PORT_ANY;
   break;
  case 128:
   ((struct sockaddr_in6 *)(&newsah->saidx.src))->sin6_port = IPSEC_PORT_ANY;
   break;
  default:
   break;
 }
 switch (saidx->dst.ss_family) {
  case 129:
   ((struct sockaddr_in *)(&newsah->saidx.dst))->sin_port = IPSEC_PORT_ANY;
   break;
  case 128:
   ((struct sockaddr_in6 *)(&newsah->saidx.dst))->sin6_port = IPSEC_PORT_ANY;
   break;
  default:
   break;
 }

 newsah->outgoing_if = outgoing_if;
 if (ipsec_if) {
  ifnet_reference(ipsec_if);
  newsah->ipsec_if = ipsec_if;
 }
 newsah->dir = dir;

 newsah->state = SADB_SASTATE_MATURE;
 LIST_INSERT_HEAD(&sahtree, newsah, chain);
 key_start_timehandler();

 return(newsah);
}
