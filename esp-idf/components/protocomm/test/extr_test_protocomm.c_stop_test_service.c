
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int protocomm_delete (int *) ;
 int * test_pc ;
 int * test_sec ;

__attribute__((used)) static void stop_test_service(void)
{
    test_sec = ((void*)0);
    protocomm_delete(test_pc);
    test_pc = ((void*)0);
}
