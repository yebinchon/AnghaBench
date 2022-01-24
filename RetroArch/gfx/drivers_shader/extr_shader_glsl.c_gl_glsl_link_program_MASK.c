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
typedef  int /*<<< orphan*/  GLuint ;
typedef  scalar_t__ GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 scalar_t__ GL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(GLuint prog)
{
   GLint status;

   FUNC1(prog);

   FUNC0(prog, GL_LINK_STATUS, &status);
   FUNC3(prog);

   if (status != GL_TRUE)
      return false;

   FUNC2(prog);
   return true;
}