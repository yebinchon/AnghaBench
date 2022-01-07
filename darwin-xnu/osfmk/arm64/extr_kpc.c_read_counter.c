
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
 int SREG_READ (int ) ;

__attribute__((used)) static uint64_t
read_counter(uint32_t counter)
{
 switch (counter) {


  case 2: return SREG_READ(SREG_PMC2);
  case 3: return SREG_READ(SREG_PMC3);
  case 4: return SREG_READ(SREG_PMC4);
  case 5: return SREG_READ(SREG_PMC5);
  case 6: return SREG_READ(SREG_PMC6);
  case 7: return SREG_READ(SREG_PMC7);




  default: return 0;
 }
}
