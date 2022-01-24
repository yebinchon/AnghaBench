#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int err; char* errstr; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 int REDIS_ERR_IO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 size_t FUNC3 (char const*) ; 

void FUNC4(redisContext *c, int type, const char *str) {
    size_t len;

    c->err = type;
    if (str != NULL) {
        len = FUNC3(str);
        len = len < (sizeof(c->errstr)-1) ? len : (sizeof(c->errstr)-1);
        FUNC1(c->errstr,str,len);
        c->errstr[len] = '\0';
    } else {
        /* Only REDIS_ERR_IO may lack a description! */
        FUNC0(type == REDIS_ERR_IO);
        FUNC2(errno,c->errstr,sizeof(c->errstr));
    }
}