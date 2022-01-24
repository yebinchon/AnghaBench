#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct socket {TYPE_5__* so_cfil; } ;
struct TYPE_10__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  s6_addr32; } ;
struct TYPE_7__ {int /*<<< orphan*/  s6_addr32; } ;
struct inpcb {int inp_vflag; int /*<<< orphan*/  inp_fport; int /*<<< orphan*/  inp_lport; TYPE_6__* inp_socket; int /*<<< orphan*/  inp_flags; TYPE_4__ inp_faddr; TYPE_3__ inp_laddr; TYPE_2__ in6p_faddr; TYPE_1__ in6p_laddr; } ;
typedef  int /*<<< orphan*/  local ;
struct TYPE_12__ {int /*<<< orphan*/  so_flags; } ;
struct TYPE_11__ {int /*<<< orphan*/  cfi_sock_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 
 int INP_IPV6 ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  MAX_IPv6_STR_LEN ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct inpcb* FUNC5 (struct socket*) ; 

__attribute__((used)) static void
FUNC6(int level, struct socket *so, const char* msg)
{
    struct inpcb *inp = NULL;
    char local[MAX_IPv6_STR_LEN+6];
    char remote[MAX_IPv6_STR_LEN+6];
    const void  *addr;

    if (so == NULL) {
        return;
    }
    
    inp = FUNC5(so);
    if (inp == NULL) {
        return;
    }
    
    local[0] = remote[0] = 0x0;

#if INET6
    if (inp->inp_vflag & INP_IPV6) {
        addr = &inp->in6p_laddr.s6_addr32;
        inet_ntop(AF_INET6, addr, local, sizeof(local));
        addr = &inp->in6p_faddr.s6_addr32;
        inet_ntop(AF_INET6, addr, remote, sizeof(local));
    } else
#endif /* INET6 */
    {
        addr = &inp->inp_laddr.s_addr;
        FUNC3(AF_INET, addr, local, sizeof(local));
        addr = &inp->inp_faddr.s_addr;
        FUNC3(AF_INET, addr, remote, sizeof(local));
    }

	if (so->so_cfil != NULL)
		FUNC0(level, "<%s>: <%s so %llx - flags 0x%x 0x%x, sockID %llu> lport %d fport %d laddr %s faddr %s",
				 msg, FUNC1(so) ? "UDP" : "TCP",
				 (uint64_t)FUNC2(so), inp->inp_flags, inp->inp_socket->so_flags, so->so_cfil->cfi_sock_id,
				 FUNC4(inp->inp_lport), FUNC4(inp->inp_fport), local, remote);
	else
		FUNC0(level, "<%s>: <%s so %llx - flags 0x%x 0x%x> lport %d fport %d laddr %s faddr %s",
				 msg, FUNC1(so) ? "UDP" : "TCP",
				 (uint64_t)FUNC2(so), inp->inp_flags, inp->inp_socket->so_flags,
				 FUNC4(inp->inp_lport), FUNC4(inp->inp_fport), local, remote);
}