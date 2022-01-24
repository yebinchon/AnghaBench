#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ucvector ;
typedef  int /*<<< orphan*/  LodePNGCompressSettings ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned FUNC4(ucvector* out, const unsigned char* data, size_t datasize,
                              LodePNGCompressSettings* zlibsettings)
{
  ucvector zlibdata;
  unsigned error = 0;

  /*compress with the Zlib compressor*/
  FUNC2(&zlibdata);
  error = FUNC3(&zlibdata.data, &zlibdata.size, data, datasize, zlibsettings);
  if(!error) error = FUNC0(out, "IDAT", zlibdata.data, zlibdata.size);
  FUNC1(&zlibdata);

  return error;
}