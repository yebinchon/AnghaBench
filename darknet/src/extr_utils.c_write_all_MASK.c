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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (int,char*,size_t) ; 

void FUNC2(int fd, char *buffer, size_t bytes)
{
    size_t n = 0;
    while(n < bytes){
        size_t next = FUNC1(fd, buffer + n, bytes-n);
        if(next <= 0) FUNC0("write failed");
        n += next;
    }
}