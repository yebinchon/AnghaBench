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

/* Variables and functions */
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int /*<<< orphan*/  RETRO_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static GLuint FUNC8(fft_t *fft,
      const char *vertex_source, const char *fragment_source)
{
   GLint status = 0;
   GLuint prog  = FUNC2();
   GLuint vert  = FUNC0(fft, GL_VERTEX_SHADER, vertex_source);
   GLuint frag  = FUNC0(fft, GL_FRAGMENT_SHADER, fragment_source);

   FUNC1(prog, vert);
   FUNC1(prog, frag);
   FUNC6(prog);

   FUNC5(prog, GL_LINK_STATUS, &status);

   if (!status)
   {
      char log_info[8 * 1024];
      GLsizei log_len;

      FUNC7(RETRO_LOG_ERROR, "Failed to link.\n");
      FUNC4(prog, sizeof(log_info), &log_len, log_info);
      FUNC7(RETRO_LOG_ERROR, "ERROR: %s\n", log_info);
   }

   FUNC3(vert);
   FUNC3(frag);
   return prog;
}