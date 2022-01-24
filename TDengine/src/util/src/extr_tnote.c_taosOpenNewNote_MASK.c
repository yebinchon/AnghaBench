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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int taosNoteFd ; 
 scalar_t__ taosNoteLines ; 
 scalar_t__ taosNoteMaxLines ; 
 int /*<<< orphan*/  taosNoteMutex ; 
 int taosNoteOpenInProgress ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  taosThreadToOpenNewNote ; 

int FUNC7()
{
    FUNC4(&taosNoteMutex);

    if (taosNoteLines > taosNoteMaxLines && taosNoteOpenInProgress == 0) {
        taosNoteOpenInProgress = 1;

        FUNC6("===============  open new note  ==================");
        pthread_t pattern;
        pthread_attr_t attr;
        FUNC1(&attr);
        FUNC2(&attr, PTHREAD_CREATE_DETACHED);

        FUNC3(&pattern, &attr, taosThreadToOpenNewNote, NULL);
        FUNC0(&attr);
    }

    FUNC5(&taosNoteMutex);

    return taosNoteFd;
}