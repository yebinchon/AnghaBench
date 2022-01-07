
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSPI_HOST ;
 int VSPI_HOST ;
 int spi_bus_free (int) ;

__attribute__((used)) static void release_bus(int host_id)
{
    if (host_id == HSPI_HOST || host_id == VSPI_HOST) {
        spi_bus_free(host_id);
    }
}
