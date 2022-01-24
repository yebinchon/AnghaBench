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
 int FUNC0 (char*,size_t,char*,char*,int) ; 
 scalar_t__ FUNC1 (char*,char) ; 

int FUNC2(char *buf, size_t buf_len, char *ip, int port) {
    return FUNC0(buf,buf_len, FUNC1(ip,':') ?
           "[%s]:%d" : "%s:%d", ip, port);
}