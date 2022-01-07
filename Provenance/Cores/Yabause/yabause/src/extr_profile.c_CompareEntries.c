
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l_total_ms; } ;
typedef TYPE_1__ entry_t ;



__attribute__((used)) static int CompareEntries (const void* p_1, const void* p_2) {
  entry_t* p_entry1, *p_entry2 ;

  p_entry1 = (entry_t*) p_1 ;
  p_entry2 = (entry_t*) p_2 ;

  return p_entry2->l_total_ms - p_entry1->l_total_ms ;
}
