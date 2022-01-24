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
struct TYPE_4__ {unsigned char* data; size_t size; } ;
typedef  TYPE_1__ ucvector ;
typedef  int /*<<< orphan*/  LodePNGCompressSettings ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*,unsigned char const*,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,size_t) ; 

unsigned FUNC2(unsigned char** out, size_t* outsize,
                         const unsigned char* in, size_t insize,
                         const LodePNGCompressSettings* settings)
{
  unsigned error;
  ucvector v;
  FUNC1(&v, *out, *outsize);
  error = FUNC0(&v, in, insize, settings);
  *out = v.data;
  *outsize = v.size;
  return error;
}