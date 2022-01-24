#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  quad_buffer ;
struct TYPE_3__ {int /*<<< orphan*/  quad; int /*<<< orphan*/  vao; } ;
typedef  TYPE_1__ fft_t ;
typedef  int /*<<< orphan*/  GLvoid ;
typedef  int GLbyte ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_BYTE ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_STATIC_DRAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC7(fft_t *fft)
{
   static const GLbyte quad_buffer[] = {
      -1, -1, 1, -1, -1, 1, 1, 1,
       0,  0, 1,  0,  0, 1, 1, 1,
   };
   FUNC4(1, &fft->quad);
   FUNC0(GL_ARRAY_BUFFER, fft->quad);
   FUNC2(GL_ARRAY_BUFFER,
         sizeof(quad_buffer), quad_buffer, GL_STATIC_DRAW);
   FUNC0(GL_ARRAY_BUFFER, 0);

   FUNC5(1, &fft->vao);
   FUNC1(fft->vao);
   FUNC0(GL_ARRAY_BUFFER, fft->quad);
   FUNC3(0);
   FUNC3(1);
   FUNC6(0, 2, GL_BYTE, GL_FALSE, 0, 0);
   FUNC6(1, 2, GL_BYTE, GL_FALSE, 0,
         (const GLvoid*)((uintptr_t)(8)));
   FUNC1(0);
   FUNC0(GL_ARRAY_BUFFER, 0);
}