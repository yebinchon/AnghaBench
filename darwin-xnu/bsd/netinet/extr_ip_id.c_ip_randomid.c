
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int new_id ;


 size_t ARRAY_SIZE ;
 size_t array_ptr ;
 int bitstr_clear (int ,scalar_t__) ;
 int bitstr_set (int ,scalar_t__) ;
 scalar_t__ bitstr_test (int ,scalar_t__) ;
 scalar_t__ htons (int ) ;
 scalar_t__* id_array ;
 int id_bits ;
 int ip_id ;
 scalar_t__ ip_use_randomid ;
 int ipid_lock ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int random_id_collisions ;
 scalar_t__ random_id_statistics ;
 int random_id_total ;
 int read_random (scalar_t__*,int) ;

uint16_t
ip_randomid(void)
{
 uint16_t new_id;






 if (id_array == ((void*)0) || ip_use_randomid == 0)
  return (htons(ip_id++));






 new_id = 0;
 do {
  if (random_id_statistics && new_id != 0)
   random_id_collisions++;
  read_random(&new_id, sizeof (new_id));
 } while (bitstr_test(id_bits, new_id) || new_id == 0);




 lck_mtx_lock_spin(&ipid_lock);
 bitstr_clear(id_bits, id_array[array_ptr]);
 bitstr_set(id_bits, new_id);
 id_array[array_ptr] = new_id;
 if (++array_ptr == ARRAY_SIZE)
  array_ptr = 0;
 lck_mtx_unlock(&ipid_lock);

 if (random_id_statistics)
  random_id_total++;

 return (new_id);
}
