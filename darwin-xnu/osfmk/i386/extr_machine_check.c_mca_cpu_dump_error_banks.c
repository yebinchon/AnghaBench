
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mca_is_valid; } ;
typedef TYPE_1__ mca_state_t ;


 int mca_dump_bank (TYPE_1__*,unsigned int) ;
 unsigned int mca_error_bank_count ;

__attribute__((used)) static void
mca_cpu_dump_error_banks(mca_state_t *state)
{
 unsigned int i;

 if (!state->mca_is_valid)
  return;

 for (i = 0; i < mca_error_bank_count; i++ ) {
  mca_dump_bank(state, i);
 }
}
