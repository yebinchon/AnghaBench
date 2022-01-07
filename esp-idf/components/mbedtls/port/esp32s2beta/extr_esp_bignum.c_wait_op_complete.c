
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DPORT_REG_READ (int ) ;
 int DPORT_REG_WRITE (int ,int) ;
 int ESP_LOGE (int ,char*,int ,int) ;
 int RSA_CLEAR_INTERRUPT_REG ;
 int RSA_QUERY_INTERRUPT_REG ;
 int TAG ;
 int abort () ;
 int op_complete_sem ;
 int portTICK_PERIOD_MS ;
 int xSemaphoreTake (int ,int) ;

__attribute__((used)) static inline void wait_op_complete(uint32_t op_reg)
{







    while(DPORT_REG_READ(RSA_QUERY_INTERRUPT_REG) != 1)
       { }


    DPORT_REG_WRITE(RSA_CLEAR_INTERRUPT_REG, 1);


}
