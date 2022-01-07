
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecc_event {scalar_t__ count; } ;
typedef int spl_t ;
typedef int kern_return_t ;


 size_t ECC_EVENT_BUFFER_COUNT ;
 scalar_t__ ECC_EVENT_INFO_DATA_ENTRIES ;
 scalar_t__ FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int bcopy (struct ecc_event const*,int *,int) ;
 int ecc_correction_count ;
 int * ecc_data ;
 scalar_t__ ecc_data_empty ;
 int ecc_data_lock ;
 size_t ecc_data_next_read ;
 size_t ecc_data_next_write ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int panic (char*,unsigned int) ;
 int splhigh () ;
 int splx (int ) ;

kern_return_t
ecc_log_record_event(const struct ecc_event *ev)
{
 spl_t x;

 if (ev->count > ECC_EVENT_INFO_DATA_ENTRIES) {
  panic("Count of %u on ecc event is too large.", (unsigned)ev->count);
 }

 x = splhigh();
 lck_spin_lock(&ecc_data_lock);

 ecc_correction_count++;

 if (ecc_data_next_read == ecc_data_next_write && !ecc_data_empty) {
  lck_spin_unlock(&ecc_data_lock);
  splx(x);
  return KERN_FAILURE;
 }

 bcopy(ev, &ecc_data[ecc_data_next_write], sizeof(*ev));
 ecc_data_next_write++;
 ecc_data_next_write %= ECC_EVENT_BUFFER_COUNT;
 ecc_data_empty = FALSE;

 lck_spin_unlock(&ecc_data_lock);
 splx(x);

 return KERN_SUCCESS;
}
