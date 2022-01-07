
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int linesizes ;
struct TYPE_5__ {unsigned int* cache_info; int cpuid_cores_per_package; int* cache_size; int* cache_sharing; int* cache_partitions; int cpuid_cache_L2_associativity; int core_count; int cpuid_cache_size; int cpuid_cache_linesize; int cache_linesize; int cpuid_stlb; int *** cpuid_tlb; } ;
typedef TYPE_1__ i386_cpu_info_t ;
struct TYPE_6__ {int type; int entries; int level; int size; } ;
typedef TYPE_2__ cpuid_cache_descriptor_t ;
typedef size_t cache_type_t ;
typedef scalar_t__ boolean_t ;





 int DBG (char*,...) ;
 scalar_t__ FALSE ;

 size_t L1D ;
 size_t L1I ;
 size_t L2U ;
 size_t L3U ;
 int LCACHE_MAX ;
 size_t Lnone ;
 int SMALL ;


 int TLB_DATA ;
 int TLB_INST ;
 int TLB_LARGE ;
 int TLB_SMALL ;
 scalar_t__ TRUE ;
 void* bitfield32 (int,int,int) ;
 int bzero (int*,int) ;
 int * cache_type_str ;
 int cpuid (int*) ;
 int cpuid_fn (int,int*) ;
 TYPE_2__* cpuid_leaf2_find (unsigned int) ;
 size_t eax ;
 size_t ebx ;
 size_t ecx ;
 int panic (char*) ;
 int vm_cache_geometry_colors ;

__attribute__((used)) static void
cpuid_set_cache_info( i386_cpu_info_t * info_p )
{
 uint32_t cpuid_result[4];
 uint32_t reg[4];
 uint32_t index;
 uint32_t linesizes[LCACHE_MAX];
 unsigned int i;
 unsigned int j;
 boolean_t cpuid_deterministic_supported = FALSE;

 DBG("cpuid_set_cache_info(%p)\n", info_p);

 bzero( linesizes, sizeof(linesizes) );




 cpuid_fn(2, cpuid_result);
 for (j = 0; j < 4; j++) {
  if ((cpuid_result[j] >> 31) == 1)
   continue;
  ((uint32_t *) info_p->cache_info)[j] = cpuid_result[j];
 }

 for (i = 1; i < info_p->cache_info[0]; i++) {
  if (i*16 > sizeof(info_p->cache_info))
   break;
  cpuid_fn(2, cpuid_result);
  for (j = 0; j < 4; j++) {
   if ((cpuid_result[j] >> 31) == 1)
    continue;
   ((uint32_t *) info_p->cache_info)[4*i+j] =
    cpuid_result[j];
  }
 }






 cpuid_fn(0, cpuid_result);
 if (cpuid_result[eax] >= 4)
  cpuid_deterministic_supported = TRUE;

 for (index = 0; cpuid_deterministic_supported; index++) {
  cache_type_t type = Lnone;
  uint32_t cache_type;
  uint32_t cache_level;
  uint32_t cache_sharing;
  uint32_t cache_linesize;
  uint32_t cache_sets;
  uint32_t cache_associativity;
  uint32_t cache_size;
  uint32_t cache_partitions;
  uint32_t colors;

  reg[eax] = 4;
  reg[ecx] = index;
  cpuid(reg);
  DBG("cpuid(4) index=%d eax=0x%x\n", index, reg[eax]);
  cache_type = bitfield32(reg[eax], 4, 0);
  if (cache_type == 0)
   break;
  cache_level = bitfield32(reg[eax], 7, 5);
  cache_sharing = bitfield32(reg[eax], 25, 14) + 1;
  info_p->cpuid_cores_per_package
     = bitfield32(reg[eax], 31, 26) + 1;
  cache_linesize = bitfield32(reg[ebx], 11, 0) + 1;
  cache_partitions = bitfield32(reg[ebx], 21, 12) + 1;
  cache_associativity = bitfield32(reg[ebx], 31, 22) + 1;
  cache_sets = bitfield32(reg[ecx], 31, 0) + 1;


  switch (cache_level) {
  case 1:
   type = cache_type == 1 ? L1D :
          cache_type == 2 ? L1I :
       Lnone;
   break;
  case 2:
   type = cache_type == 3 ? L2U :
       Lnone;
   break;
  case 3:
   type = cache_type == 3 ? L3U :
       Lnone;
   break;
  default:
   type = Lnone;
  }




  if (type != Lnone) {
   cache_size = cache_linesize * cache_sets *
         cache_associativity * cache_partitions;
   info_p->cache_size[type] = cache_size;
   info_p->cache_sharing[type] = cache_sharing;
   info_p->cache_partitions[type] = cache_partitions;
   linesizes[type] = cache_linesize;

   DBG(" cache_size[%s]      : %d\n",
       cache_type_str[type], cache_size);
   DBG(" cache_sharing[%s]   : %d\n",
       cache_type_str[type], cache_sharing);
   DBG(" cache_partitions[%s]: %d\n",
       cache_type_str[type], cache_partitions);






   if (type == L2U)
    info_p->cpuid_cache_L2_associativity = cache_associativity;




            if (type == L3U && info_p->core_count)
                cache_sets = cache_sets / info_p->core_count;
    colors = ( cache_linesize * cache_sets ) >> 12;

    if ( colors > vm_cache_geometry_colors )
    vm_cache_geometry_colors = colors;
  }
 }
 DBG(" vm_cache_geometry_colors: %d\n", vm_cache_geometry_colors);





 if (info_p->cpuid_cores_per_package == 0) {
  info_p->cpuid_cores_per_package = 1;


  info_p->cache_size[L2U] = info_p->cpuid_cache_size * 1024;
  info_p->cache_sharing[L2U] = 1;
  info_p->cache_partitions[L2U] = 1;

  linesizes[L2U] = info_p->cpuid_cache_linesize;

  DBG(" cache_size[L2U]      : %d\n",
      info_p->cache_size[L2U]);
  DBG(" cache_sharing[L2U]   : 1\n");
  DBG(" cache_partitions[L2U]: 1\n");
  DBG(" linesizes[L2U]       : %d\n",
      info_p->cpuid_cache_linesize);
 }





 if ( linesizes[L2U] )
  info_p->cache_linesize = linesizes[L2U];
 else if (linesizes[L1D])
  info_p->cache_linesize = linesizes[L1D];
 else panic("no linesize");
 DBG(" cache_linesize    : %d\n", info_p->cache_linesize);




 DBG(" %ld leaf2 descriptors:\n", sizeof(info_p->cache_info));
 for (i = 1; i < sizeof(info_p->cache_info); i++) {
  cpuid_cache_descriptor_t *descp;
  int id;
  int level;
  int page;

  DBG(" 0x%02x", info_p->cache_info[i]);
  descp = cpuid_leaf2_find(info_p->cache_info[i]);
  if (descp == ((void*)0))
   continue;

  switch (descp->type) {
  case 128:
   page = (descp->size == SMALL) ? TLB_SMALL : TLB_LARGE;

   switch (descp->level) {
   case 130:
    id = TLB_INST;
    break;
   case 133:
   case 132:
   case 131:
    id = TLB_DATA;
    break;
   default:
    continue;
   }

   switch (descp->level) {
   case 131:
    level = 1;
    break;
   default:
    level = 0;
   }
   info_p->cpuid_tlb[id][page][level] = descp->entries;
   break;
  case 129:
   info_p->cpuid_stlb = descp->entries;
  }
 }
 DBG("\n");
}
