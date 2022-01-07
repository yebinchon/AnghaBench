
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecc_event {int dummy; } ;
typedef int spl_t ;
typedef int kern_return_t ;


 size_t ECC_EVENT_BUFFER_COUNT ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int bcopy (int *,struct ecc_event*,int) ;
 int * ecc_data ;
 scalar_t__ ecc_data_empty ;
 int ecc_data_lock ;
 size_t ecc_data_next_read ;
 size_t ecc_data_next_write ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int splhigh () ;
 int splx (int ) ;

kern_return_t
ecc_log_get_next_event(struct ecc_event *ev)
{
 spl_t x;

 x = splhigh();
 lck_spin_lock(&ecc_data_lock);

 if (ecc_data_empty) {
  assert(ecc_data_next_write == ecc_data_next_read);

  lck_spin_unlock(&ecc_data_lock);
  splx(x);
  return KERN_FAILURE;
 }

 bcopy(&ecc_data[ecc_data_next_read], ev, sizeof(*ev));
 ecc_data_next_read++;
 ecc_data_next_read %= ECC_EVENT_BUFFER_COUNT;

 if (ecc_data_next_read == ecc_data_next_write) {
  ecc_data_empty = TRUE;
 }

 lck_spin_unlock(&ecc_data_lock);
 splx(x);

 return KERN_SUCCESS;
}
