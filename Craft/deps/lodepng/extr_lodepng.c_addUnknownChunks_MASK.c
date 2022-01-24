#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  allocsize; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ucvector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*) ; 
 unsigned char* FUNC2 (unsigned char*) ; 

__attribute__((used)) static unsigned FUNC3(ucvector* out, unsigned char* data, size_t datasize)
{
  unsigned char* inchunk = data;
  while((size_t)(inchunk - data) < datasize)
  {
    FUNC0(FUNC1(&out->data, &out->size, inchunk));
    out->allocsize = out->size; /*fix the allocsize again*/
    inchunk = FUNC2(inchunk);
  }
  return 0;
}