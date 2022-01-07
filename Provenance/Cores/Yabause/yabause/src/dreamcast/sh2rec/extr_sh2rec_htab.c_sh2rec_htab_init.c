
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_entry_t ;


 int SH2REC_HTAB_ENTRIES ;
 int memset (int ,int ,int) ;
 int table ;

void sh2rec_htab_init(void) {
    memset(table, 0, sizeof(htab_entry_t *) * SH2REC_HTAB_ENTRIES);
}
