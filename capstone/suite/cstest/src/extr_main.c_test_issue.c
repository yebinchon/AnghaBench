
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int csh ;


 size_t counter ;
 scalar_t__ e_flag ;
 int getDetail ;
 int issue_mode ;
 scalar_t__* list_lines ;
 int test_single_issue (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static void test_issue(void **state)
{
 if (e_flag == 0)
  test_single_issue((csh *)*state, issue_mode, list_lines[counter], getDetail);
 else
  test_single_issue((csh *)*state, issue_mode, list_lines[counter] + 3, getDetail);

 return;
}
