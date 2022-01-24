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
typedef  int /*<<< orphan*/  LodePNGColorType ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned char**,size_t*,unsigned char const*,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned int FUNC2 (unsigned char*,size_t,char const*) ; 

unsigned FUNC3(const char* filename, const unsigned char* image, unsigned w, unsigned h,
                             LodePNGColorType colortype, unsigned bitdepth)
{
  unsigned char* buffer;
  size_t buffersize;
  unsigned error = FUNC0(&buffer, &buffersize, image, w, h, colortype, bitdepth);
  if(!error) error = FUNC2(buffer, buffersize, filename);
  FUNC1(buffer);
  return error;
}