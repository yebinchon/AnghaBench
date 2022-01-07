
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ address; } ;
typedef TYPE_1__ esp_partition_t ;


 TYPE_1__* get_test_data_partition () ;
 int printf (char*,scalar_t__) ;
 scalar_t__ start ;

__attribute__((used)) static void setup_tests(void)
{
    if (start == 0) {
        const esp_partition_t *part = get_test_data_partition();
        start = part->address;
        printf("Test data partition @ 0x%x\n", start);
    }
}
