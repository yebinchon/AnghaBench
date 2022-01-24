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
typedef  int /*<<< orphan*/  log_info ;
typedef  int /*<<< orphan*/  fft_t ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  scalar_t__ GLint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int /*<<< orphan*/  GLchar ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 int /*<<< orphan*/  RETRO_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static GLuint FUNC6(fft_t *fft, GLenum type, const char *source)
{
   GLint status  = 0;
   GLuint shader = FUNC1(type);

   FUNC4(shader, 1, (const GLchar**)&source, NULL);
   FUNC0(shader);

   FUNC3(shader, GL_COMPILE_STATUS, &status);

   if (!status)
   {
      char log_info[8 * 1024];
      GLsizei log_len;

      FUNC5(RETRO_LOG_ERROR, "Failed to compile.\n");
      FUNC2(shader, sizeof(log_info), &log_len, log_info);
      FUNC5(RETRO_LOG_ERROR, "ERROR: %s\n", log_info);
      return 0;
   }

   return shader;
}