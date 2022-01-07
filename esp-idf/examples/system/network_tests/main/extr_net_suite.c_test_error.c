
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err_t ;


 int printf (char*,int) ;

void test_error(void *arg, err_t err)
{
    printf("Error CB from pcb %d\n", err);
}
