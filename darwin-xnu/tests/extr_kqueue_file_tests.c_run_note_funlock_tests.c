
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_nondeterministic; int * t_cleanup_actions; int t_helpthreadact; int * t_prep_actions; } ;
typedef TYPE_1__ test_t ;


 int CREAT ;
 scalar_t__ FILE1 ;
 int FUNLOCK ;
 int NOSLEEP ;
 int NOTE_FUNLOCK ;
 int SLEEP ;
 int UNLINK ;
 int YES_EVENT ;
 int execute_test (TYPE_1__*) ;
 int init_action (int *,int ,int ,int,void*,void*) ;
 int init_test (TYPE_1__*,char*,scalar_t__,int,int,int ,int ) ;

void
run_note_funlock_tests()
{
 test_t test;
 init_test(&test, "11.1.1: unlock file", FILE1, 1, 1, NOTE_FUNLOCK, YES_EVENT);
 test.t_nondeterministic = 1;
 init_action(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void *)((void*)0));
 init_action(&test.t_helpthreadact, SLEEP, FUNLOCK, 2, (void*)FILE1, (void *)((void*)0));
 init_action(&(test.t_cleanup_actions[0]), NOSLEEP, UNLINK, 2, (void*)FILE1, (void *)((void*)0));
 execute_test(&test);
}
