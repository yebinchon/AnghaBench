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
typedef  int /*<<< orphan*/  GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_STATIC_DRAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(GLfloat **buffer, size_t *buffer_elems,
      const GLfloat *data, size_t elems)
{
   if (elems > *buffer_elems)
   {
      GLfloat *new_buffer = (GLfloat*)
         FUNC2(*buffer, elems * sizeof(GLfloat));
      FUNC3(new_buffer);
      *buffer = new_buffer;
   }

   FUNC1(*buffer, data, elems * sizeof(GLfloat));
   FUNC0(GL_ARRAY_BUFFER, elems * sizeof(GLfloat),
         data, GL_STATIC_DRAW);
   *buffer_elems = elems;
}