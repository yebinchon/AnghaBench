
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_helpthreadact; int * t_prep_actions; int * t_cleanup_actions; } ;
typedef TYPE_1__ test_t ;


 int CREAT ;
 scalar_t__ FILE1 ;
 int NOSLEEP ;
 int NOTE_REVOKE ;
 int NO_EVENT ;
 int REVOKE ;
 int SLEEP ;
 int UNLINK ;
 int YES_EVENT ;
 int execute_test (TYPE_1__*) ;
 int init_action (int *,int ,int ,int,void*) ;
 int init_test (TYPE_1__*,char*,scalar_t__,int,int,int ,int ) ;

void
run_note_revoke_tests()
{
 test_t test;
 init_test(&test, "7.1.1: revoke file", FILE1, 1, 1, NOTE_REVOKE, YES_EVENT);
 init_action(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 1, (void*)FILE1);
 init_action(&test.t_helpthreadact, SLEEP, REVOKE, 1, (void*)FILE1);
 init_action(&(test.t_cleanup_actions[0]), NOSLEEP, UNLINK, 1, (void*)FILE1);
 execute_test(&test);

 init_test(&test, "7.2.1: delete file", FILE1, 1, 0, NOTE_REVOKE, NO_EVENT);
 init_action(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 1, (void*)FILE1);
 init_action(&test.t_helpthreadact, SLEEP, UNLINK, 1, (void*)FILE1);
 execute_test(&test);
}
