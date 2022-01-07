
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_entry_t ;


 int SH2REC_HTAB_ENTRIES ;
 int htab_free_chain (scalar_t__) ;
 int memset (scalar_t__*,int ,int) ;
 scalar_t__* table ;

void sh2rec_htab_reset(void) {
    int i;

    for(i = 0; i < SH2REC_HTAB_ENTRIES; ++i) {
        if(table[i]) {
            htab_free_chain(table[i]);
        }
    }

    memset(table, 0, sizeof(htab_entry_t *) * SH2REC_HTAB_ENTRIES);
}
