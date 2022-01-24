#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ucvector ;
typedef  scalar_t__ LodePNGColorType ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static unsigned FUNC5(ucvector* out, unsigned w, unsigned h,
                              LodePNGColorType colortype, unsigned bitdepth, unsigned interlace_method)
{
  unsigned error = 0;
  ucvector header;
  FUNC3(&header);

  FUNC1(&header, w); /*width*/
  FUNC1(&header, h); /*height*/
  FUNC4(&header, (unsigned char)bitdepth); /*bit depth*/
  FUNC4(&header, (unsigned char)colortype); /*color type*/
  FUNC4(&header, 0); /*compression method*/
  FUNC4(&header, 0); /*filter method*/
  FUNC4(&header, interlace_method); /*interlace method*/

  error = FUNC0(out, "IHDR", header.data, header.size);
  FUNC2(&header);

  return error;
}