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
typedef  int GLint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 

__attribute__((used)) static void FUNC2(GLint shader)
{
   // Prints the information log for a program object
   char log[1024];
   FUNC0(shader,sizeof log,NULL,log);
   FUNC1("%d:program:\n%s\n", shader, log);
}