
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfil_hash_entry {int dummy; } ;
struct cfil_db {struct cfil_hash_entry* cfdb_only_entry; int cfdb_count; } ;


 int LIST_REMOVE (struct cfil_hash_entry*,int ) ;
 int cfentry_link ;
 int cfil_hash_entry_zone ;
 int zfree (int ,struct cfil_hash_entry*) ;

void
cfil_db_delete_entry(struct cfil_db *db, struct cfil_hash_entry *hash_entry)
{
    if (hash_entry == ((void*)0))
        return;

    LIST_REMOVE(hash_entry, cfentry_link);
    zfree(cfil_hash_entry_zone, hash_entry);
    db->cfdb_count--;
    if (db->cfdb_only_entry == hash_entry)
        db->cfdb_only_entry = ((void*)0);
}
