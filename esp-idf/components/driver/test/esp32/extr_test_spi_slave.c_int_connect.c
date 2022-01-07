
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int gpio_matrix_in (int ,int ,int) ;
 int gpio_matrix_out (int ,int ,int,int) ;

__attribute__((used)) static inline void int_connect( uint32_t gpio, uint32_t sigo, uint32_t sigi )
{
    gpio_matrix_out( gpio, sigo, 0, 0 );
    gpio_matrix_in( gpio, sigi, 0 );
}
