#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void stbi_uc ;
struct TYPE_4__ {int w; int h; int delay; int /*<<< orphan*/  background; int /*<<< orphan*/  history; int /*<<< orphan*/  out; } ;
typedef  TYPE_1__ stbi__gif ;
typedef  int /*<<< orphan*/  stbi__context ;
typedef  int /*<<< orphan*/  g ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (void*,int,int,int,int) ; 
 void* FUNC5 (char*,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int*,int,void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void *FUNC9(stbi__context *s, int **delays, int *x, int *y, int *z, int *comp, int req_comp)
{
   if (FUNC7(s)) {
      int layers = 0; 
      stbi_uc *u = 0;
      stbi_uc *out = 0;
      stbi_uc *two_back = 0; 
      stbi__gif g;
      int stride; 
      FUNC3(&g, 0, sizeof(g));
      if (delays) {
         *delays = 0; 
      }

      do {
         u = FUNC6(s, &g, comp, req_comp, two_back);
         if (u == (stbi_uc *) s) u = 0;  // end of animated gif marker

         if (u) {
            *x = g.w;
            *y = g.h;
            ++layers; 
            stride = g.w * g.h * 4; 
         
            if (out) {
               out = (stbi_uc*) FUNC1( out, layers * stride ); 
               if (delays) {
                  *delays = (int*) FUNC1( *delays, sizeof(int) * layers ); 
               }
            } else {
               out = (stbi_uc*)FUNC8( layers * stride ); 
               if (delays) {
                  *delays = (int*) FUNC8( layers * sizeof(int) ); 
               }
            }
            FUNC2( out + ((layers - 1) * stride), u, stride ); 
            if (layers >= 2) {
               two_back = out - 2 * stride; 
            }

            if (delays) {
               (*delays)[layers - 1U] = g.delay; 
            }
         }
      } while (u != 0); 

      // free temp buffer; 
      FUNC0(g.out); 
      FUNC0(g.history); 
      FUNC0(g.background); 

      // do the final conversion after loading everything; 
      if (req_comp && req_comp != 4)
         out = FUNC4(out, 4, req_comp, layers * g.w, g.h);

      *z = layers; 
      return out;
   } else {
      return FUNC5("not GIF", "Image was not as a gif type."); 
   }
}