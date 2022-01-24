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
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(GLuint obj)
{
   char *info_log = NULL;
   GLint max_len, info_len = 0;

   FUNC3(obj, GL_INFO_LOG_LENGTH, &max_len);

   if (max_len == 0)
      return;

   info_log = (char*)FUNC4(max_len);
   if (!info_log)
      return;

   FUNC2(obj, max_len, &info_len, info_log);

   if (info_len > 0)
      FUNC0("Shader log: %s\n", info_log);

   FUNC1(info_log);
}