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
typedef  int stbi_uc ;
typedef  scalar_t__ stbi__uint16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static stbi__uint16 *FUNC3(stbi_uc *orig, int w, int h, int channels)
{
   int i;
   int img_len = w * h * channels;
   stbi__uint16 *enlarged;

   enlarged = (stbi__uint16 *) FUNC2(img_len*2);
   if (enlarged == NULL) return (stbi__uint16 *) FUNC1("outofmem", "Out of memory");

   for (i = 0; i < img_len; ++i)
      enlarged[i] = (stbi__uint16)((orig[i] << 8) + orig[i]); // replicate to high and low byte, maps 0->0, 255->0xffff

   FUNC0(orig);
   return enlarged;
}