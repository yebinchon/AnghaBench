
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int SREG_PMC2 ;
 int SREG_PMC3 ;
 int SREG_PMC4 ;
 int SREG_PMC5 ;
 int SREG_PMC6 ;
 int SREG_PMC7 ;
 int SREG_PMC8 ;
 int SREG_PMC9 ;
 int SREG_WRITE (int ,int ) ;

__attribute__((used)) static void
write_counter(uint32_t counter, uint64_t value)
{
 switch (counter) {


  case 2: SREG_WRITE(SREG_PMC2, value); break;
  case 3: SREG_WRITE(SREG_PMC3, value); break;
  case 4: SREG_WRITE(SREG_PMC4, value); break;
  case 5: SREG_WRITE(SREG_PMC5, value); break;
  case 6: SREG_WRITE(SREG_PMC6, value); break;
  case 7: SREG_WRITE(SREG_PMC7, value); break;




  default: break;
 }
}
