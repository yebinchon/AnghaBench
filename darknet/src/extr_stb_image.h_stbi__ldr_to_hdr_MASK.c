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
typedef  float stbi_uc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int FUNC1 (float,int /*<<< orphan*/ ) ; 
 float* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  stbi__l2h_gamma ; 
 int stbi__l2h_scale ; 
 scalar_t__ FUNC3 (int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static float   *FUNC4(stbi_uc *data, int x, int y, int comp)
{
   int i,k,n;
   float *output;
   if (!data) return NULL;
   output = (float *) FUNC3(x, y, comp, sizeof(float), 0);
   if (output == NULL) { FUNC0(data); return FUNC2("outofmem", "Out of memory"); }
   // compute number of non-alpha components
   if (comp & 1) n = comp; else n = comp-1;
   for (i=0; i < x*y; ++i) {
      for (k=0; k < n; ++k) {
         output[i*comp + k] = (float) (FUNC1(data[i*comp+k]/255.0f, stbi__l2h_gamma) * stbi__l2h_scale);
      }
      if (k < comp) output[i*comp + k] = data[i*comp+k]/255.0f;
   }
   FUNC0(data);
   return output;
}