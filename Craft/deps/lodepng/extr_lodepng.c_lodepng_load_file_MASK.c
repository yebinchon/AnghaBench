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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (unsigned char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

unsigned FUNC7(unsigned char** out, size_t* outsize, const char* filename)
{
  FILE* file;
  long size;

  /*provide some proper output values if error will happen*/
  *out = 0;
  *outsize = 0;

  file = FUNC1(filename, "rb");
  if(!file) return 78;

  /*get filesize:*/
  FUNC3(file , 0 , SEEK_END);
  size = FUNC4(file);
  FUNC6(file);

  /*read contents of the file into the vector*/
  *outsize = 0;
  *out = (unsigned char*)FUNC5((size_t)size);
  if(size && (*out)) (*outsize) = FUNC2(*out, 1, (size_t)size, file);

  FUNC0(file);
  if(!(*out) && size) return 83; /*the above malloc failed*/
  return 0;
}