
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int SH2REC_HTAB_ENTRIES ;

__attribute__((used)) static inline int hash_addr(u32 addr) {
    return ((addr ^ 2654435761U) >> 2) & (SH2REC_HTAB_ENTRIES - 1);
}
