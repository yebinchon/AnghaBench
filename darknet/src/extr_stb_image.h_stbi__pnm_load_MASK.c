#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void stbi_uc ;
typedef  int /*<<< orphan*/  stbi__result_info ;
struct TYPE_5__ {int img_x; int img_y; int img_n; } ;
typedef  TYPE_1__ stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (void*,int,int,int,int) ; 
 void* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*,int*,int*) ; 

__attribute__((used)) static void *FUNC7(stbi__context *s, int *x, int *y, int *comp, int req_comp, stbi__result_info *ri)
{
   stbi_uc *out;
   FUNC0(ri);

   if (!FUNC6(s, (int *)&s->img_x, (int *)&s->img_y, (int *)&s->img_n))
      return 0;

   *x = s->img_x;
   *y = s->img_y;
   if (comp) *comp = s->img_n;

   if (!FUNC4(s->img_n, s->img_x, s->img_y, 0))
      return FUNC2("too large", "PNM too large");

   out = (stbi_uc *) FUNC5(s->img_n, s->img_x, s->img_y, 0);
   if (!out) return FUNC2("outofmem", "Out of memory");
   FUNC3(s, out, s->img_n * s->img_x * s->img_y);

   if (req_comp && req_comp != s->img_n) {
      out = FUNC1(out, s->img_n, req_comp, s->img_x, s->img_y);
      if (out == NULL) return out; // stbi__convert_format frees input on failure
   }
   return out;
}