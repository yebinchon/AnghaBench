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
typedef  int /*<<< orphan*/  stbi__result_info ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 float* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (float*,int*,int*,int*,int) ; 
 float* FUNC2 (int /*<<< orphan*/ *,int*,int*,int*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 float* FUNC4 (unsigned char*,int,int,int) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ *,int*,int*,int*,int) ; 

__attribute__((used)) static float *FUNC6(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   unsigned char *data;
   #ifndef STBI_NO_HDR
   if (FUNC3(s)) {
      stbi__result_info ri;
      float *hdr_data = FUNC2(s,x,y,comp,req_comp, &ri);
      if (hdr_data)
         FUNC1(hdr_data,x,y,comp,req_comp);
      return hdr_data;
   }
   #endif
   data = FUNC5(s, x, y, comp, req_comp);
   if (data)
      return FUNC4(data, *x, *y, req_comp ? req_comp : *comp);
   return FUNC0("unknown image type", "Image not of any known type, or corrupt");
}