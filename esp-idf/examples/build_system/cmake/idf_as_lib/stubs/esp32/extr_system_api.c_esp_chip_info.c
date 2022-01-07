
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int cores; scalar_t__ features; } ;
typedef TYPE_1__ esp_chip_info_t ;



void esp_chip_info(esp_chip_info_t* out_info)
{
    out_info->cores = 8;
    out_info->features = (uint32_t) -1;
}
