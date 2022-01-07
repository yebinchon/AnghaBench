
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_nondeterministic; int * t_cleanup_actions; int t_helpthreadact; int * t_prep_actions; } ;
typedef TYPE_1__ test_t ;
struct passwd {scalar_t__ pw_gid; scalar_t__ pw_uid; } ;


 int CHMOD ;
 int CHOWN ;
 int CREAT ;
 void* DIR1 ;
 void* FILE1 ;
 int LENGTHEN ;
 int MKDIR ;
 int NOSLEEP ;
 int NOTE_EXTEND ;
 int NO_EVENT ;
 int RMDIR ;
 int SETXATTR ;
 int SLEEP ;
 int TRUNC ;
 int T_LOG (char*) ;
 int UNLINK ;
 int WRITE ;
 int YES_EVENT ;
 int execute_test (TYPE_1__*) ;
 scalar_t__ getgid () ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ getuid () ;
 int init_action (int *,int ,int ,int,void*,void*,...) ;
 int init_test (TYPE_1__*,char*,void*,int,int,int ,int ) ;

void
run_note_extend_tests()
{
 test_t test;
 char pathbuf[50];

 T_LOG("THESE TESTS MAY FAIL ON HFS\n");

 init_test(&test, "3.1.1: write beyond the end of a file", FILE1, 1, 1, NOTE_EXTEND, YES_EVENT);
 test.t_nondeterministic = 1;
 init_action(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)((void*)0));
 init_action(&test.t_helpthreadact, SLEEP, WRITE, 2, (void*)FILE1, (void*)((void*)0));
 init_action(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)((void*)0));
 execute_test(&test);
 init_test(&test, "3.1.7: lengthen a file with truncate()", FILE1, 1, 1, NOTE_EXTEND, YES_EVENT);
 test.t_nondeterministic = 1;
 init_action(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)((void*)0));
 init_action(&test.t_helpthreadact, SLEEP, LENGTHEN, 2, FILE1, (void*)((void*)0));
 init_action(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)((void*)0));
 execute_test(&test);



 init_test(&test, "3.2.1: setxattr() a file", FILE1, 1, 1, NOTE_EXTEND, NO_EVENT);
 init_action(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)((void*)0));
 init_action(&test.t_helpthreadact, SLEEP, SETXATTR, 2, FILE1, (void*)((void*)0));
 init_action(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)((void*)0));
 execute_test(&test);

 init_test(&test, "3.2.2: chmod a file", FILE1, 1, 1, NOTE_EXTEND, NO_EVENT);
 init_action(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)((void*)0));
 init_action(&test.t_helpthreadact, SLEEP, CHMOD, 2, (void*)FILE1, (void*)0700);
 init_action(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)((void*)0));
 execute_test(&test);

 struct passwd *pwd = getpwnam("local");
 if (pwd != ((void*)0)) {
  init_test(&test, "3.2.3: chown a file", FILE1, 2, 1, NOTE_EXTEND, NO_EVENT);
  init_action(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)((void*)0));
  init_action(&test.t_prep_actions[1], NOSLEEP, CHOWN, 3, (void*)FILE1, (void*)pwd->pw_uid, (void*)pwd->pw_gid);
  init_action(&test.t_helpthreadact, SLEEP, CHOWN, 3, (void*)FILE1, (void*)getuid(), (void*)getgid());
  init_action(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)((void*)0));
  execute_test(&test);
 } else {
  T_LOG("Couldn't getpwnam for user \"local\"\n");
 }

 init_test(&test, "3.2.4: chmod a dir", DIR1, 1, 1, NOTE_EXTEND, NO_EVENT);
 init_action(&(test.t_prep_actions[0]), NOSLEEP, MKDIR, 2, (void*)DIR1, (void*)((void*)0));
 init_action(&test.t_helpthreadact, SLEEP, CHMOD, 2, (void*)DIR1, (void*)0700);
 init_action(&test.t_cleanup_actions[0], NOSLEEP, RMDIR, 2, (void*)DIR1, (void*)((void*)0));
 execute_test(&test);

 if (pwd != ((void*)0)) {
  init_test(&test, "3.2.5: chown a dir", DIR1, 2, 1, NOTE_EXTEND, NO_EVENT);
  init_action(&(test.t_prep_actions[0]), NOSLEEP, MKDIR, 2, (void*)DIR1, (void*)((void*)0));
  init_action(&test.t_prep_actions[1], NOSLEEP, CHOWN, 3, (void*)DIR1, (void*)pwd->pw_uid, (void*)pwd->pw_gid);
  init_action(&test.t_helpthreadact, SLEEP, CHOWN, 3, (void*)DIR1, (void*)getuid(), (void*)getgid());
  init_action(&test.t_cleanup_actions[0], NOSLEEP, RMDIR, 2, (void*)DIR1, (void*)((void*)0));
  execute_test(&test);
 }

 init_test(&test, "3.2.6: TRUNC a file with truncate()", FILE1, 1, 1, NOTE_EXTEND, NO_EVENT);
 init_action(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)((void*)0));
 init_action(&test.t_helpthreadact, SLEEP, TRUNC, 2, FILE1, (void*)((void*)0));
 init_action(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)((void*)0));
 execute_test(&test);
}
