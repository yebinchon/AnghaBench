#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_6__ {char* ptr; } ;
typedef  TYPE_1__ robj ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (char*) ; 

sds FUNC5(sds dst, int argc, robj **argv) {
    char buf[32];
    int len, j;
    robj *o;

    buf[0] = '*';
    len = 1+FUNC2(buf+1,sizeof(buf)-1,argc);
    buf[len++] = '\r';
    buf[len++] = '\n';
    dst = FUNC3(dst,buf,len);

    for (j = 0; j < argc; j++) {
        o = FUNC1(argv[j]);
        buf[0] = '$';
        len = 1+FUNC2(buf+1,sizeof(buf)-1,FUNC4(o->ptr));
        buf[len++] = '\r';
        buf[len++] = '\n';
        dst = FUNC3(dst,buf,len);
        dst = FUNC3(dst,o->ptr,FUNC4(o->ptr));
        dst = FUNC3(dst,"\r\n",2);
        FUNC0(o);
    }
    return dst;
}