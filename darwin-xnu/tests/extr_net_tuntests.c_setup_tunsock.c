
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct in_addr {void* s_addr; } ;
struct TYPE_7__ {void* s_addr; } ;


 int IFXNAMSIZ ;
 int SADB_ADD ;
 int T_ASSERT_GE (int ,int ,int *) ;
 int T_ATEND (int ) ;
 int T_LOG (char*,char*) ;
 int cleanup_tunsock ;
 int create_sa (char*,int ,int,TYPE_1__*,TYPE_1__*) ;
 int create_tunsock (int,int,int) ;
 TYPE_1__ g_addr1 ;
 TYPE_1__ g_addr2 ;
 scalar_t__ g_is_ipsec_test ;
 int g_tunsock ;
 scalar_t__ getpid () ;
 void* htonl (int) ;
 int ifnet_add_addr4 (char*,TYPE_1__*,struct in_addr*,TYPE_1__*) ;
 int tunsock_get_ifname (int ,char*) ;

__attribute__((used)) static void
setup_tunsock(void)
{
 T_ASSERT_GE(g_tunsock = create_tunsock(1, 0, 1), 0, ((void*)0));
 T_ATEND(cleanup_tunsock);

 char ifname[IFXNAMSIZ];
 tunsock_get_ifname(g_tunsock, ifname);

 T_LOG("Created interface %s", ifname);

 uint32_t ifaddr = (10 << 24) | ((unsigned)getpid()&0xffff) << 8 | 160;
 struct in_addr mask;
 g_addr1.s_addr = htonl(ifaddr);
 g_addr2.s_addr = htonl(ifaddr+1);
 mask.s_addr = htonl(0xffffffff);

 ifnet_add_addr4(ifname, &g_addr1, &mask, &g_addr2);

 if (g_is_ipsec_test) {
  create_sa(ifname, SADB_ADD, 12345, &g_addr1, &g_addr2);
  create_sa(ifname, SADB_ADD, 12346, &g_addr2, &g_addr1);
 }
}
