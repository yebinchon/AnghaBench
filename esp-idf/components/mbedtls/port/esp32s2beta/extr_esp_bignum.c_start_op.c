
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DPORT_REG_WRITE (int ,int) ;
 int RSA_CLEAR_INTERRUPT_REG ;

__attribute__((used)) static inline void start_op(uint32_t op_reg)
{

    DPORT_REG_WRITE(RSA_CLEAR_INTERRUPT_REG, 1);




    DPORT_REG_WRITE(op_reg, 1);
}
