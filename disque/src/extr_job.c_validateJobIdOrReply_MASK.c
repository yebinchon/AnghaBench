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
typedef  int /*<<< orphan*/  client ;

/* Variables and functions */
 int C_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,size_t) ; 

int FUNC3(client *c, char *id, size_t len) {
    int retval = FUNC2(id,len);
    if (retval == C_ERR && c)
        FUNC0(c,FUNC1("-BADID Invalid Job ID format.\r\n"));
    return retval;
}