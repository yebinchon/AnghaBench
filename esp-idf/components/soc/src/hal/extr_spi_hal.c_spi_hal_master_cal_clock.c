
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spi_ll_master_cal_clock (int,int,int,int *) ;

int spi_hal_master_cal_clock(int fapb, int hz, int duty_cycle)
{
    return spi_ll_master_cal_clock(fapb, hz, duty_cycle, ((void*)0));
}
