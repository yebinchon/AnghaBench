#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int NOTE_FILE_NAME_LEN ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int taosNoteFd ; 
 int taosNoteFlag ; 
 scalar_t__ taosNoteLines ; 
 char* taosNoteName ; 
 scalar_t__ taosNoteOpenInProgress ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void *FUNC7(void *param)
{
    char name[NOTE_FILE_NAME_LEN];

    taosNoteFlag ^= 1;
    taosNoteLines = 0;
    FUNC2(name, "%s.%d", taosNoteName, taosNoteFlag);

    FUNC6(0);

    int fd = FUNC1(name, O_WRONLY | O_CREAT | O_TRUNC, S_IRWXU | S_IRWXG | S_IRWXO);
    FUNC4(fd);
    FUNC0(fd, 0, SEEK_SET);

    int oldFd = taosNoteFd;
    taosNoteFd = fd;
    taosNoteLines = 0;
    taosNoteOpenInProgress = 0;
    FUNC5("===============  new note is opened  =============");

    FUNC3(oldFd);
    return NULL;
}