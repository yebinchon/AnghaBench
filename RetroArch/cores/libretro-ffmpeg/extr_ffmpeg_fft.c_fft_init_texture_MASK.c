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
typedef  int /*<<< orphan*/  fft_t ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_MAG_FILTER ; 
 int /*<<< orphan*/  GL_TEXTURE_MIN_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(fft_t *fft, GLuint *tex, GLenum format,
      unsigned width, unsigned height, unsigned levels, GLenum mag, GLenum min)
{
   FUNC1(1, tex);
   FUNC0(GL_TEXTURE_2D, *tex);
   FUNC3(GL_TEXTURE_2D, levels, format, width, height);
   FUNC2(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, mag);
   FUNC2(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, min);
   FUNC0(GL_TEXTURE_2D, 0);
}