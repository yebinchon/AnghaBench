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
struct load_args {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  struct load_args load_args ;

/* Variables and functions */
 struct load_args* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  load_threads ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct load_args*) ; 

pthread_t FUNC3(load_args args)
{
    pthread_t thread;
    struct load_args *ptr = FUNC0(1, sizeof(struct load_args));
    *ptr = args;
    if(FUNC2(&thread, 0, load_threads, ptr)) FUNC1("Thread creation failed");
    return thread;
}