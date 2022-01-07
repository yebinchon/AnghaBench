
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bitstr_t ;


 int ARRAY_SIZE ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int VERIFY (int ) ;
 int _CASSERT (int) ;
 int _FREE (int *,int ) ;
 scalar_t__ _MALLOC (int,int ,int) ;
 int bitstr_size (int) ;
 int * id_array ;
 int * id_bits ;
 int ipid_lock ;
 int ipid_lock_attr ;
 int ipid_lock_grp ;
 int ipid_lock_grp_attr ;
 int lck_attr_alloc_init () ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_grp_attr_alloc_init () ;
 int lck_mtx_init (int *,int ,int ) ;

void
ip_initid(void)
{
 VERIFY(id_array == ((void*)0));
 VERIFY(id_bits == ((void*)0));

 _CASSERT(ARRAY_SIZE >= 512 && ARRAY_SIZE <= 32768);

 ipid_lock_grp_attr = lck_grp_attr_alloc_init();
 ipid_lock_grp = lck_grp_alloc_init("ipid", ipid_lock_grp_attr);
 ipid_lock_attr = lck_attr_alloc_init();
 lck_mtx_init(&ipid_lock, ipid_lock_grp, ipid_lock_attr);

 id_array = (uint16_t *)_MALLOC(ARRAY_SIZE * sizeof (uint16_t),
     M_TEMP, M_WAITOK | M_ZERO);
 id_bits = (bitstr_t *)_MALLOC(bitstr_size(65536), M_TEMP,
     M_WAITOK | M_ZERO);
 if (id_array == ((void*)0) || id_bits == ((void*)0)) {

  if (id_array != ((void*)0)) {
   _FREE(id_array, M_TEMP);
   id_array = ((void*)0);
  }
  if (id_bits != ((void*)0)) {
   _FREE(id_bits, M_TEMP);
   id_bits = ((void*)0);
  }
 }
}
