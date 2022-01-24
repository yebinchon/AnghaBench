#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int t_nondeterministic; int /*<<< orphan*/ * t_cleanup_actions; int /*<<< orphan*/  t_helpthreadact; int /*<<< orphan*/ * t_prep_actions; } ;
typedef  TYPE_1__ test_t ;
struct passwd {scalar_t__ pw_gid; scalar_t__ pw_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHMOD ; 
 int /*<<< orphan*/  CHOWN ; 
 int /*<<< orphan*/  CREAT ; 
 void* DIR1 ; 
 void* FILE1 ; 
 int /*<<< orphan*/  LENGTHEN ; 
 int /*<<< orphan*/  MKDIR ; 
 int /*<<< orphan*/  NOSLEEP ; 
 int /*<<< orphan*/  NOTE_EXTEND ; 
 int /*<<< orphan*/  NO_EVENT ; 
 int /*<<< orphan*/  RMDIR ; 
 int /*<<< orphan*/  SETXATTR ; 
 int /*<<< orphan*/  SLEEP ; 
 int /*<<< orphan*/  TRUNC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UNLINK ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  YES_EVENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 struct passwd* FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,void*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,void*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7()
{
	test_t test;
	char pathbuf[50];
	
	FUNC0("THESE TESTS MAY FAIL ON HFS\n");
	
	FUNC6(&test, "3.1.1: write beyond the end of a file", FILE1, 1, 1, NOTE_EXTEND, YES_EVENT);
	test.t_nondeterministic = 1;
	FUNC5(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)NULL);
	FUNC5(&test.t_helpthreadact, SLEEP, WRITE, 2, (void*)FILE1, (void*)NULL); 
	FUNC5(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)NULL);
	FUNC1(&test);
	
	/*
	 * We won't concern ourselves with lengthening directories: commenting these out  
	 *
	 
	 makepath(pathbuf, DIR1, FILE1);
	 init_test(&test, "3.1.2: add a file to a directory with creat()", DIR1, 1, 2, NOTE_EXTEND, YES_EVENT);
	 init_action(&(test.t_prep_actions[0]), NOSLEEP, MKDIR, 2, (void*)DIR1, (void*)NULL);
	 init_action(&test.t_helpthreadact, SLEEP, CREAT, 2, (void*)pathbuf, (void*)NULL); 
	 init_action(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)pathbuf, (void*)NULL);
	 init_action(&test.t_cleanup_actions[1], NOSLEEP, RMDIR, 2, (void*)DIR1, (void*)NULL);
	 execute_test(&test);
	 
	 makepath(pathbuf, DIR1, FILE1);
	 init_test(&test, "3.1.3: add a file to a directory with open()", DIR1, 1, 2, NOTE_EXTEND, YES_EVENT);
	 init_action(&(test.t_prep_actions[0]), NOSLEEP, MKDIR, 2, (void*)DIR1, (void*)NULL);
	 init_action(&test.t_helpthreadact, SLEEP, CREAT, 2, (void*)pathbuf, (void*)NULL); 
	 init_action(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)pathbuf, (void*)NULL);
	 init_action(&test.t_cleanup_actions[1], NOSLEEP, RMDIR, 2, (void*)DIR1, (void*)NULL);
	 execute_test(&test);
	 
	 makepath(pathbuf, DIR1, FILE1);
	 init_test(&test, "3.1.4: add a file to a directory with rename()", DIR1, 2, 2, NOTE_EXTEND, YES_EVENT);
	 init_action(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)NULL);
	 init_action(&(test.t_prep_actions[1]), NOSLEEP, MKDIR, 2, (void*)DIR1, (void*)NULL);
	 init_action(&test.t_helpthreadact, SLEEP, RENAME, 2, (void*)FILE1, (void*)pathbuf); 
	 init_action(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)pathbuf, (void*)NULL);
	 init_action(&test.t_cleanup_actions[1], NOSLEEP, RMDIR, 2, (void*)DIR1, (void*)NULL);
	 execute_test(&test);
	 */
	
	/* 3.1.5: a placeholder for a potential kernel test */
	/*
	 makepath(pathbuf, DIR1, DIR2);
	 init_test(&test, "3.1.6: add a file to a directory with mkdir()", DIR1, 1, 2, NOTE_EXTEND, YES_EVENT);
	 init_action(&(test.t_prep_actions[0]), NOSLEEP, MKDIR, 2, (void*)DIR1, (void*)NULL);
	 init_action(&test.t_helpthreadact, SLEEP, MKDIR, 2, (void*)pathbuf, (void*)NULL); 
	 init_action(&test.t_cleanup_actions[0], NOSLEEP, RMDIR, 2, (void*)pathbuf, (void*)NULL);
	 init_action(&test.t_cleanup_actions[1], NOSLEEP, RMDIR, 2, (void*)DIR1, (void*)NULL);
	 execute_test(&test);
	 */
	FUNC6(&test, "3.1.7: lengthen a file with truncate()", FILE1, 1, 1, NOTE_EXTEND, YES_EVENT);
	test.t_nondeterministic = 1;
	FUNC5(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)NULL);
	FUNC5(&test.t_helpthreadact, SLEEP, LENGTHEN, 2, FILE1, (void*)NULL); 
	FUNC5(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)NULL);
	FUNC1(&test);
	
	
	/** ========== NO EVENT SECTION ============== **/
	FUNC6(&test, "3.2.1: setxattr() a file", FILE1, 1, 1, NOTE_EXTEND, NO_EVENT);
	FUNC5(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)NULL);
	FUNC5(&test.t_helpthreadact, SLEEP, SETXATTR, 2, FILE1, (void*)NULL); 
	FUNC5(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)NULL);
	FUNC1(&test);
	
	FUNC6(&test, "3.2.2: chmod a file", FILE1, 1, 1, NOTE_EXTEND, NO_EVENT);
	FUNC5(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)NULL);
	FUNC5(&test.t_helpthreadact, SLEEP, CHMOD, 2, (void*)FILE1, (void*)0700);
	FUNC5(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)NULL);
	FUNC1(&test);
	
	struct passwd *pwd = FUNC3("local");
	if (pwd != NULL) {
		FUNC6(&test, "3.2.3: chown a file", FILE1, 2, 1, NOTE_EXTEND, NO_EVENT);
		FUNC5(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)NULL);
		FUNC5(&test.t_prep_actions[1], NOSLEEP, CHOWN, 3, (void*)FILE1, (void*)pwd->pw_uid, (void*)pwd->pw_gid);
		FUNC5(&test.t_helpthreadact, SLEEP, CHOWN, 3, (void*)FILE1, (void*)FUNC4(), (void*)FUNC2());
		FUNC5(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)NULL);
		FUNC1(&test);
	} else {
		FUNC0("Couldn't getpwnam for user \"local\"\n");
	}
	
	FUNC6(&test, "3.2.4: chmod a dir", DIR1, 1, 1, NOTE_EXTEND, NO_EVENT);
	FUNC5(&(test.t_prep_actions[0]), NOSLEEP, MKDIR, 2, (void*)DIR1, (void*)NULL);
	FUNC5(&test.t_helpthreadact, SLEEP, CHMOD, 2, (void*)DIR1, (void*)0700);
	FUNC5(&test.t_cleanup_actions[0], NOSLEEP, RMDIR, 2, (void*)DIR1, (void*)NULL);
	FUNC1(&test);
	
	if (pwd != NULL) {
		FUNC6(&test, "3.2.5: chown a dir", DIR1, 2, 1, NOTE_EXTEND, NO_EVENT);
		FUNC5(&(test.t_prep_actions[0]), NOSLEEP, MKDIR, 2, (void*)DIR1, (void*)NULL);
		FUNC5(&test.t_prep_actions[1], NOSLEEP, CHOWN, 3, (void*)DIR1, (void*)pwd->pw_uid, (void*)pwd->pw_gid);
		FUNC5(&test.t_helpthreadact, SLEEP, CHOWN, 3, (void*)DIR1, (void*)FUNC4(), (void*)FUNC2());
		FUNC5(&test.t_cleanup_actions[0], NOSLEEP, RMDIR, 2, (void*)DIR1, (void*)NULL);
		FUNC1(&test);
	}
	
	FUNC6(&test, "3.2.6: TRUNC a file with truncate()", FILE1, 1, 1, NOTE_EXTEND, NO_EVENT);
	FUNC5(&(test.t_prep_actions[0]), NOSLEEP, CREAT, 2, (void*)FILE1, (void*)NULL);
	FUNC5(&test.t_helpthreadact, SLEEP, TRUNC, 2, FILE1, (void*)NULL); 
	FUNC5(&test.t_cleanup_actions[0], NOSLEEP, UNLINK, 2, (void*)FILE1, (void*)NULL);
	FUNC1(&test);
}