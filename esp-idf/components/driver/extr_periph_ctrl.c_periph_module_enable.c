
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int periph_module_t ;


 int DPORT_CLEAR_PERI_REG_MASK (int ,int ) ;
 int DPORT_SET_PERI_REG_MASK (int ,int ) ;
 int get_clk_en_mask (int ) ;
 int get_clk_en_reg (int ) ;
 int get_rst_en_mask (int ,int) ;
 int get_rst_en_reg (int ) ;
 int periph_spinlock ;
 int portENTER_CRITICAL_SAFE (int *) ;
 int portEXIT_CRITICAL_SAFE (int *) ;

void periph_module_enable(periph_module_t periph)
{
    portENTER_CRITICAL_SAFE(&periph_spinlock);
    DPORT_SET_PERI_REG_MASK(get_clk_en_reg(periph), get_clk_en_mask(periph));
    DPORT_CLEAR_PERI_REG_MASK(get_rst_en_reg(periph), get_rst_en_mask(periph, 1));
    portEXIT_CRITICAL_SAFE(&periph_spinlock);
}
