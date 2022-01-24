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
typedef  int /*<<< orphan*/  stbtt_uint8 ;
typedef  int stbtt_uint32 ;
typedef  int stbtt_int32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(stbtt_uint8 *fc, stbtt_uint32 offset, stbtt_uint8 *name, stbtt_int32 flags)
{
   stbtt_int32 nlen = (stbtt_int32)FUNC3((char*)name);
   stbtt_uint32 nm,hd;
   if (!FUNC1(fc+offset))
      return 0;

   /* check italics/bold/underline flags in macStyle... */
   if (flags)
   {
      hd = FUNC0(fc, offset, "head");
      if ((FUNC4(fc+hd+44) & 7) != (flags & 7)) return 0;
   }

   nm = FUNC0(fc, offset, "name");
   if (!nm)
      return 0;

   if (flags)
   {
      /* if we checked the macStyle flags, then just check the family and ignore the subfamily */
      if (FUNC2(fc, nm, name, nlen, 16, -1))
         return 1;
      if (FUNC2(fc, nm, name, nlen,  1, -1))
         return 1;
      if (FUNC2(fc, nm, name, nlen,  3, -1))
         return 1;
   }
   else
   {
      if (FUNC2(fc, nm, name, nlen, 16, 17))
         return 1;
      if (FUNC2(fc, nm, name, nlen,  1,  2))
         return 1;
      if (FUNC2(fc, nm, name, nlen,  3, -1))
         return 1;
   }

   return 0;
}