
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_len; int sin6_addr; int sin6_port; } ;
struct TYPE_12__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_5__ sin_addr; int sin_port; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_11__ {TYPE_3__ ia46_addr4; } ;
struct TYPE_14__ {int addr6; TYPE_4__ addr46; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_9__ {TYPE_1__ ia46_addr4; } ;
struct TYPE_13__ {int addr6; TYPE_2__ addr46; } ;
struct cfil_hash_entry {int cfentry_family; TYPE_7__ cfentry_faddr; int cfentry_fport; TYPE_6__ cfentry_laddr; int cfentry_lport; } ;




 int FALSE ;
 int TRUE ;
 struct sockaddr_in* satosin (struct sockaddr*) ;
 struct sockaddr_in6* satosin6 (struct sockaddr*) ;

__attribute__((used)) static bool
fill_cfil_hash_entry_from_address(struct cfil_hash_entry *entry, bool isLocal, struct sockaddr *addr)
{
    struct sockaddr_in *sin = ((void*)0);
    struct sockaddr_in6 *sin6 = ((void*)0);

    if (entry == ((void*)0) || addr == ((void*)0)) {
        return FALSE;
    }

    switch (addr->sa_family) {
        case 129:
            sin = satosin(addr);
            if (sin->sin_len != sizeof(*sin)) {
                return FALSE;
            }
            if (isLocal == TRUE) {
                entry->cfentry_lport = sin->sin_port;
                entry->cfentry_laddr.addr46.ia46_addr4.s_addr = sin->sin_addr.s_addr;
            } else {
                entry->cfentry_fport = sin->sin_port;
                entry->cfentry_faddr.addr46.ia46_addr4.s_addr = sin->sin_addr.s_addr;
            }
            entry->cfentry_family = 129;
            return TRUE;
        case 128:
            sin6 = satosin6(addr);
            if (sin6->sin6_len != sizeof(*sin6)) {
                return FALSE;
            }
            if (isLocal == TRUE) {
                entry->cfentry_lport = sin6->sin6_port;
                entry->cfentry_laddr.addr6 = sin6->sin6_addr;
            } else {
                entry->cfentry_fport = sin6->sin6_port;
                entry->cfentry_faddr.addr6 = sin6->sin6_addr;
            }
            entry->cfentry_family = 128;
            return TRUE;
        default:
            return FALSE;
    }
}
