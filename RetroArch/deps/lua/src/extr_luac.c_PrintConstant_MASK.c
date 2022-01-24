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
struct TYPE_3__ {int /*<<< orphan*/ * k; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Proto ;

/* Variables and functions */
 char* LUA_INTEGER_FMT ; 
 char* LUA_NUMBER_FMT ; 
#define  LUA_TBOOLEAN 133 
#define  LUA_TLNGSTR 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMFLT 130 
#define  LUA_TNUMINT 129 
#define  LUA_TSHRSTR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC9(const Proto* f, int i)
{
 const TValue* o=&f->k[i];
 switch (FUNC8(o))
 {
  case LUA_TNIL:
	FUNC4("nil");
	break;
  case LUA_TBOOLEAN:
	FUNC4(FUNC1(o) ? "true" : "false");
	break;
  case LUA_TNUMFLT:
	{
	char buff[100];
	FUNC5(buff,LUA_NUMBER_FMT,FUNC2(o));
	FUNC4("%s",buff);
	if (buff[FUNC6(buff,"-0123456789")]=='\0') FUNC4(".0");
	break;
	}
  case LUA_TNUMINT:
	FUNC4(LUA_INTEGER_FMT,FUNC3(o));
	break;
  case LUA_TSHRSTR: case LUA_TLNGSTR:
	FUNC0(FUNC7(o));
	break;
  default:				/* cannot happen */
	FUNC4("? type=%d",FUNC8(o));
	break;
 }
}