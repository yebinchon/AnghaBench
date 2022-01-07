
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HSPI_HOST ;
 int VSPI_HOST ;

__attribute__((used)) static bool is_valid_slot(int slot)
{
    return slot == VSPI_HOST || slot == HSPI_HOST;
}
