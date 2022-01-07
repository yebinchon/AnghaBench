
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DPORT_REG_READ (int ) ;
 int DPORT_REG_WRITE (int ,int) ;
 int RSA_INTERRUPT_REG ;

__attribute__((used)) static inline void wait_op_complete(uint32_t op_reg)
{
    while(DPORT_REG_READ(RSA_INTERRUPT_REG) != 1)
       { }


    DPORT_REG_WRITE(RSA_INTERRUPT_REG, 1);
}
