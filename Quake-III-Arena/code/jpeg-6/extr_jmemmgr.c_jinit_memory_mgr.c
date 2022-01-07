
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* my_mem_ptr ;
typedef TYPE_3__* j_common_ptr ;
struct TYPE_12__ {TYPE_1__* mem; } ;
struct TYPE_10__ {long max_memory_to_use; int self_destruct; int free_pool; int access_virt_barray; int access_virt_sarray; int realize_virt_arrays; int request_virt_barray; int request_virt_sarray; int alloc_barray; int alloc_sarray; int alloc_large; int alloc_small; } ;
struct TYPE_11__ {long total_space_allocated; TYPE_1__ pub; int * virt_barray_list; int * virt_sarray_list; int ** large_list; int ** small_list; } ;


 int ALIGN_TYPE ;
 int ERREXIT (TYPE_3__*,int ) ;
 int ERREXIT1 (TYPE_3__*,int ,int ) ;
 int JERR_BAD_ALIGN_TYPE ;
 int JERR_BAD_ALLOC_CHUNK ;
 int JERR_OUT_OF_MEMORY ;
 int JPOOL_NUMPOOLS ;
 int JPOOL_PERMANENT ;
 long MAX_ALLOC_CHUNK ;
 long SIZEOF (int ) ;
 int access_virt_barray ;
 int access_virt_sarray ;
 int alloc_barray ;
 int alloc_large ;
 int alloc_sarray ;
 int alloc_small ;
 int free_pool ;
 char* getenv (char*) ;
 scalar_t__ jpeg_get_small (TYPE_3__*,long) ;
 long jpeg_mem_init (TYPE_3__*) ;
 int jpeg_mem_term (TYPE_3__*) ;
 int my_memory_mgr ;
 int realize_virt_arrays ;
 int request_virt_barray ;
 int request_virt_sarray ;
 int self_destruct ;
 scalar_t__ sscanf (char*,char*,long*,char*) ;

void
jinit_memory_mgr (j_common_ptr cinfo)
{
  my_mem_ptr mem;
  long max_to_use;
  int pool;
  size_t test_mac;

  cinfo->mem = ((void*)0);
  if ((SIZEOF(ALIGN_TYPE) & (SIZEOF(ALIGN_TYPE)-1)) != 0)
    ERREXIT(cinfo, JERR_BAD_ALIGN_TYPE);





  test_mac = (size_t) MAX_ALLOC_CHUNK;
  if ((long) test_mac != MAX_ALLOC_CHUNK ||
      (MAX_ALLOC_CHUNK % SIZEOF(ALIGN_TYPE)) != 0)
    ERREXIT(cinfo, JERR_BAD_ALLOC_CHUNK);

  max_to_use = jpeg_mem_init(cinfo);


  mem = (my_mem_ptr) jpeg_get_small(cinfo, SIZEOF(my_memory_mgr));

  if (mem == ((void*)0)) {
    jpeg_mem_term(cinfo);
    ERREXIT1(cinfo, JERR_OUT_OF_MEMORY, 0);
  }


  mem->pub.alloc_small = alloc_small;
  mem->pub.alloc_large = alloc_large;
  mem->pub.alloc_sarray = alloc_sarray;
  mem->pub.alloc_barray = alloc_barray;
  mem->pub.request_virt_sarray = request_virt_sarray;
  mem->pub.request_virt_barray = request_virt_barray;
  mem->pub.realize_virt_arrays = realize_virt_arrays;
  mem->pub.access_virt_sarray = access_virt_sarray;
  mem->pub.access_virt_barray = access_virt_barray;
  mem->pub.free_pool = free_pool;
  mem->pub.self_destruct = self_destruct;


  mem->pub.max_memory_to_use = max_to_use;

  for (pool = JPOOL_NUMPOOLS-1; pool >= JPOOL_PERMANENT; pool--) {
    mem->small_list[pool] = ((void*)0);
    mem->large_list[pool] = ((void*)0);
  }
  mem->virt_sarray_list = ((void*)0);
  mem->virt_barray_list = ((void*)0);

  mem->total_space_allocated = SIZEOF(my_memory_mgr);


  cinfo->mem = & mem->pub;
  { char * memenv;

    if ((memenv = getenv("JPEGMEM")) != ((void*)0)) {
      char ch = 'x';

      if (sscanf(memenv, "%ld%c", &max_to_use, &ch) > 0) {
 if (ch == 'm' || ch == 'M')
   max_to_use *= 1000L;
 mem->pub.max_memory_to_use = max_to_use * 1000L;
      }
    }
  }


}
