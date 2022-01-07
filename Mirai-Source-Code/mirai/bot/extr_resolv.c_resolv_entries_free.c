
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resolv_entries {struct resolv_entries* addrs; } ;


 int free (struct resolv_entries*) ;

void resolv_entries_free(struct resolv_entries *entries)
{
    if (entries == ((void*)0))
        return;
    if (entries->addrs != ((void*)0))
        free(entries->addrs);
    free(entries);
}
