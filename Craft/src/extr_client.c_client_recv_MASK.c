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
 int bytes_received ; 
 int /*<<< orphan*/  client_enabled ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mutex ; 
 int qsize ; 
 char* queue ; 

char *FUNC5() {
    if (!client_enabled) {
        return 0;
    }
    char *result = 0;
    FUNC3(&mutex);
    char *p = queue + qsize - 1;
    while (p >= queue && *p != '\n') {
        p--;
    }
    if (p >= queue) {
        int length = p - queue + 1;
        result = FUNC0(sizeof(char) * (length + 1));
        FUNC1(result, queue, sizeof(char) * length);
        result[length] = '\0';
        int remaining = qsize - length;
        FUNC2(queue, p + 1, remaining);
        qsize -= length;
        bytes_received += length;
    }
    FUNC4(&mutex);
    return result;
}