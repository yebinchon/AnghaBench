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
struct TYPE_3__ {int /*<<< orphan*/  zfree; scalar_t__ opaque; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  scalar_t__ voidpf ;
typedef  int uInt ;
typedef  int /*<<< orphan*/  inflate_huft ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int*,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  zcalloc ; 
 int /*<<< orphan*/  zcfree ; 

int FUNC5(void)
{
  int r;
  uInt bl, bd;
  inflate_huft *tl, *td;
  z_stream z;

  z.zalloc = zcalloc;
  z.opaque = (voidpf)0;
  z.zfree = zcfree;
  r = FUNC1(&bl, &bd, &tl, &td, &z);
  if (r)
  {
    FUNC0(stderr, "inflate_trees_fixed error %d\n", r);
    return;
  }
  FUNC4("/* inffixed.h -- table for decoding fixed codes");
  FUNC4(" * Generated automatically by the maketree.c program");
  FUNC4(" */");
  FUNC4("");
  FUNC4("/* WARNING: this file should *not* be used by applications. It is");
  FUNC4("   part of the implementation of the compression library and is");
  FUNC4("   subject to change. Applications should only use zlib.h.");
  FUNC4(" */");
  FUNC4("");
  FUNC3("local uInt fixed_bl = %d;\n", bl);
  FUNC3("local uInt fixed_bd = %d;\n", bd);
  FUNC3("local inflate_huft fixed_tl[] = {");
  FUNC2(bl, tl);
  FUNC4("  };");
  FUNC3("local inflate_huft fixed_td[] = {");
  FUNC2(bd, td);
  FUNC4("  };");
}