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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2(void) {
    FUNC1(stderr,"Usage: ./disque-server [/path/to/disque.conf] [options]\n");
    FUNC1(stderr,"       ./disque-server - (read config from stdin)\n");
    FUNC1(stderr,"       ./disque-server -v or --version\n");
    FUNC1(stderr,"       ./disque-server -h or --help\n");
    FUNC1(stderr,"       ./disque-server --test-memory <megabytes>\n\n");
    FUNC1(stderr,"Examples:\n");
    FUNC1(stderr,"       ./disque-server (run the server with default conf)\n");
    FUNC1(stderr,"       ./disque-server /etc/disque/7711.conf\n");
    FUNC1(stderr,"       ./disque-server --port 7777\n");
    FUNC1(stderr,"       ./disque-server --port 7777 --slaveof 127.0.0.1 8888\n");
    FUNC1(stderr,"       ./disque-server /etc/mydisque.conf --loglevel verbose\n\n");
    FUNC0(1);
}