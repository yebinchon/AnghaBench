
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct bp_entry {int * address; int instr; struct bp_entry* next; } ;


 int BPCODE ;
 int DCStoreRangeNoSync (void*,int) ;
 size_t GEKKO_MAX_BP ;
 int ICInvalidateRange (void*,int) ;
 int _sync () ;
 struct bp_entry* bp_entries ;
 struct bp_entry* p_bpentries ;

__attribute__((used)) static u32 insert_bp(void *mem)
{
 u32 i;
 struct bp_entry *p;

 for(i=0;i<GEKKO_MAX_BP;i++) {
  if(bp_entries[i].address == ((void*)0)) break;
 }
 if(i==GEKKO_MAX_BP) return 0;

 p = &bp_entries[i];
 p->next = p_bpentries;
 p->address = mem;
 p_bpentries = p;

 p->instr = *(p->address);
 *(p->address) = BPCODE;

 DCStoreRangeNoSync((void*)((u32)mem&~0x1f),32);
 ICInvalidateRange((void*)((u32)mem&~0x1f),32);
 _sync();

 return 1;
}
