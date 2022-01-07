
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int boolean_t ;
struct TYPE_4__ {int* buffer; } ;
struct TYPE_3__ {int seedset; } ;


 size_t ENTROPY_BUFFER_BYTE_SIZE ;
 int ENTROPY_BUFFER_SIZE ;
 int ENTROPY_READ (unsigned int) ;
 TYPE_2__ EntropyData ;
 int FALSE ;
 int KERNEL_DEBUG_EARLY (int ,int ,int ,int ,int ) ;
 TYPE_1__ erandom ;
 int memcpy (void*,int*,size_t) ;
 int ml_set_interrupts_enabled (int ) ;
 int panic (char*) ;

void
entropy_buffer_read(void * buffer, size_t * count)
{
 boolean_t current_state;
 unsigned int i, j;

 if (!erandom.seedset) {
  panic("early_random was never invoked");
 }

 if (*count > ENTROPY_BUFFER_BYTE_SIZE) {
  *count = ENTROPY_BUFFER_BYTE_SIZE;
 }

 current_state = ml_set_interrupts_enabled(FALSE);

 memcpy(buffer, EntropyData.buffer, *count);


 for (i = 0, j = (ENTROPY_BUFFER_SIZE - 1); i < ENTROPY_BUFFER_SIZE; j = i, i++)
  EntropyData.buffer[i] = EntropyData.buffer[i] ^ EntropyData.buffer[j];

 (void)ml_set_interrupts_enabled(current_state);
}
