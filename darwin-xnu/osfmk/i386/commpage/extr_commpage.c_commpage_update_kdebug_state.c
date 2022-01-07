
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ _COMM_PAGE32_BASE_ADDRESS ;
 scalar_t__ _COMM_PAGE32_START_ADDRESS ;
 scalar_t__ _COMM_PAGE_KDEBUG_ENABLE ;
 char* commPagePtr32 ;
 char* commPagePtr64 ;
 int kdebug_commpage_state () ;

void
commpage_update_kdebug_state(void)
{
 volatile uint32_t *saved_data_ptr;
 char *cp;

 cp = commPagePtr32;
 if (cp) {
  cp += (_COMM_PAGE_KDEBUG_ENABLE - _COMM_PAGE32_BASE_ADDRESS);
  saved_data_ptr = (volatile uint32_t *)cp;
  *saved_data_ptr = kdebug_commpage_state();
 }

 cp = commPagePtr64;
 if (cp) {
  cp += (_COMM_PAGE_KDEBUG_ENABLE - _COMM_PAGE32_START_ADDRESS);
  saved_data_ptr = (volatile uint32_t *)cp;
  *saved_data_ptr = kdebug_commpage_state();
 }
}
