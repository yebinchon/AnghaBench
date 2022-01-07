
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csh ;


 size_t counter ;
 int e_flag ;
 scalar_t__* list_lines ;
 int mc_mode ;
 int test_single_MC (int *,int ,scalar_t__) ;

__attribute__((used)) static void test_MC(void **state)
{
 if (e_flag == 1)
  test_single_MC((csh *)*state, mc_mode, list_lines[counter] + 3);
 else
  test_single_MC((csh *)*state, mc_mode, list_lines[counter]);
}
