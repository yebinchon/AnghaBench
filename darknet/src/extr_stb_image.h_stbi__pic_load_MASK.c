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
typedef  void stbi_uc ;
typedef  int /*<<< orphan*/  stbi__result_info ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (void*,int,int,int,int) ; 
 void* FUNC5 (char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,int*,void*) ; 

__attribute__((used)) static void *FUNC12(stbi__context *s,int *px,int *py,int *comp,int req_comp, stbi__result_info *ri)
{
   stbi_uc *result;
   int i, x,y, internal_comp;
   FUNC1(ri);

   if (!comp) comp = &internal_comp;

   for (i=0; i<92; ++i)
      FUNC8(s);

   x = FUNC6(s);
   y = FUNC6(s);
   if (FUNC3(s))  return FUNC5("bad file","file too short (pic header)");
   if (!FUNC9(x, y, 4, 0)) return FUNC5("too large", "PIC image too large to decode");

   FUNC7(s); //skip `ratio'
   FUNC6(s); //skip `fields'
   FUNC6(s); //skip `pad'

   // intermediate buffer is RGBA
   result = (stbi_uc *) FUNC10(x, y, 4, 0);
   FUNC2(result, 0xff, x*y*4);

   if (!FUNC11(s,x,y,comp, result)) {
      FUNC0(result);
      result=0;
   }
   *px = x;
   *py = y;
   if (req_comp == 0) req_comp = *comp;
   result=FUNC4(result,4,req_comp,x,y);

   return result;
}