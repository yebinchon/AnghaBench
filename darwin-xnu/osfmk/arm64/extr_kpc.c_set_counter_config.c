
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int PMESR_EVT_CLEAR (int,int) ;
 int PMESR_EVT_ENCODE (int ,int,int) ;
 int SREG_PMESR0 ;
 int SREG_PMESR1 ;
 int SREG_READ (int ) ;
 int SREG_WRITE (int ,int ) ;
 int cpu_number () ;
 int ** saved_PMESR ;
 int set_modes (int,int ) ;

__attribute__((used)) static void
set_counter_config(uint32_t counter, uint64_t config)
{
 int cpuid = cpu_number();
 uint64_t pmesr = 0;

 switch (counter) {
  case 2:
  case 3:
  case 4:
  case 5:
   pmesr = SREG_READ(SREG_PMESR0);
   pmesr &= PMESR_EVT_CLEAR(counter, 2);
   pmesr |= PMESR_EVT_ENCODE(config, counter, 2);
   SREG_WRITE(SREG_PMESR0, pmesr);
   saved_PMESR[cpuid][0] = pmesr;
   break;

  case 6:
  case 7:





   pmesr = SREG_READ(SREG_PMESR1);
   pmesr &= PMESR_EVT_CLEAR(counter, 6);
   pmesr |= PMESR_EVT_ENCODE(config, counter, 6);
   SREG_WRITE(SREG_PMESR1, pmesr);
   saved_PMESR[cpuid][1] = pmesr;
   break;
  default:
   break;
 }

 set_modes(counter, config);
}
