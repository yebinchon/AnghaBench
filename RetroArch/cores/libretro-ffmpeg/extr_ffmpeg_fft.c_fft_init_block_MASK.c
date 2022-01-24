#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int elems; int /*<<< orphan*/  ibo; int /*<<< orphan*/  vao; int /*<<< orphan*/  vbo; int /*<<< orphan*/  prog; } ;
struct TYPE_6__ {int block_size; int depth; TYPE_1__ block; } ;
typedef  TYPE_2__ fft_t ;
typedef  unsigned int GLushort ;
typedef  unsigned int GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_ELEMENT_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_STATIC_DRAW ; 
 int /*<<< orphan*/  GL_UNSIGNED_SHORT ; 
 scalar_t__ FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fft_fragment_program_heightmap ; 
 int /*<<< orphan*/  fft_vertex_program_heightmap ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(fft_t *fft)
{
   unsigned x, y;
   unsigned block_vertices_size = 0;
   unsigned block_indices_size  = 0;
   int pos                      = 0;
   GLuint *bp                   = NULL;
   GLushort *block_vertices     = NULL;
   GLuint   *block_indices      = NULL;

   fft->block.prog              = FUNC1(fft,
         fft_vertex_program_heightmap, fft_fragment_program_heightmap);

   FUNC11(fft->block.prog);
   FUNC10(FUNC9(fft->block.prog, "sHeight"), 0);

   block_vertices_size = 2 * fft->block_size * fft->depth;
   block_vertices      = (GLushort*)FUNC0(block_vertices_size, sizeof(GLushort));

   for (y = 0; y < fft->depth; y++)
   {
      for (x = 0; x < fft->block_size; x++)
      {
         block_vertices[2 * (y * fft->block_size + x) + 0] = x;
         block_vertices[2 * (y * fft->block_size + x) + 1] = y;
      }
   }
   FUNC7(1, &fft->block.vbo);
   FUNC3(GL_ARRAY_BUFFER, fft->block.vbo);
   FUNC5(GL_ARRAY_BUFFER,
         block_vertices_size * sizeof(GLushort),
         &block_vertices[0], GL_STATIC_DRAW);

   fft->block.elems = (2 * fft->block_size - 1) * (fft->depth - 1) + 1;

   block_indices_size = fft->block.elems;
   block_indices = (GLuint*)FUNC0(block_indices_size, sizeof(GLuint));

   bp = &block_indices[0];

   for (y = 0; y < fft->depth - 1; y++)
   {
      int x;
      int step_odd  = (-(int)(fft->block_size)) + ((y & 1) ? -1 : 1);
      int step_even = fft->block_size;

      for (x = 0; x < 2 * (int)(fft->block_size) - 1; x++)
      {
         *bp++ = pos;
         pos += (x & 1) ? step_odd : step_even;
      }
   }
   *bp++ = pos;

   FUNC8(1, &fft->block.vao);
   FUNC4(fft->block.vao);

   FUNC7(1, &fft->block.ibo);
   FUNC3(GL_ELEMENT_ARRAY_BUFFER, fft->block.ibo);
   FUNC5(GL_ELEMENT_ARRAY_BUFFER,
         block_indices_size * sizeof(GLuint),
         &block_indices[0], GL_STATIC_DRAW);

   FUNC6(0);
   FUNC12(0, 2, GL_UNSIGNED_SHORT, GL_FALSE, 0, 0);
   FUNC4(0);

   FUNC3(GL_ARRAY_BUFFER, 0);
   FUNC3(GL_ELEMENT_ARRAY_BUFFER, 0);

   FUNC2(block_vertices);
   FUNC2(block_indices);
}