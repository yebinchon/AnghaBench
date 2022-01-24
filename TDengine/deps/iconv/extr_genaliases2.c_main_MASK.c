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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdout ; 

int FUNC4 (int argc, char* argv[])
{
  const char * tag = (argc > 1 ? argv[1] : "xxx");
  FILE * stdout2 = FUNC2(3, "w");
  if (stdout2 == NULL)
    FUNC0(1);
#define DEFENCODING(xxx_names,xxx,xxx_ifuncs1,xxx_ifuncs2,xxx_ofuncs1,xxx_ofuncs2) \
  {                                                           \
    static const char* const names[] = BRACIFY xxx_names;     \
    emit_encoding(stdout,stdout2,tag,names,sizeof(names)/sizeof(names[0]),#xxx); \
  }
#define BRACIFY(...) { __VA_ARGS__ }
#define DEFALIAS(xxx_alias,xxx) emit_alias(stdout,tag,xxx_alias,#xxx);
#ifdef USE_AIX
#include "encodings_aix.def"
#endif
#ifdef USE_OSF1
#include "encodings_osf1.def"
#endif
#ifdef USE_DOS
#include "encodings_dos.def"
#endif
#ifdef USE_EXTRA
#include "encodings_extra.def"
#endif
#undef DEFALIAS
#undef BRACIFY
#undef DEFENCODING
  if (FUNC3(stdout) || FUNC1(stdout) || FUNC3(stdout2) || FUNC1(stdout2))
    FUNC0(1);
  FUNC0(0);
}