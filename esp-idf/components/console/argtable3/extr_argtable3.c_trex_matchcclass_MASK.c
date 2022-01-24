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
typedef  int TRexChar ;
typedef  int /*<<< orphan*/  TRexBool ;

/* Variables and functions */
 int /*<<< orphan*/  TRex_False ; 
 int /*<<< orphan*/  TRex_True ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static TRexBool FUNC9(int cclass,TRexChar ch)
{
    int c = ch;
	switch(cclass) {
	case 'a': return FUNC1(c)?TRex_True:TRex_False;
	case 'A': return !FUNC1(c)?TRex_True:TRex_False;
	case 'w': return (FUNC0(c) || c == '_')?TRex_True:TRex_False;
	case 'W': return (!FUNC0(c) && c != '_')?TRex_True:TRex_False;
	case 's': return FUNC6(c)?TRex_True:TRex_False;
	case 'S': return !FUNC6(c)?TRex_True:TRex_False;
	case 'd': return FUNC3(c)?TRex_True:TRex_False;
	case 'D': return !FUNC3(c)?TRex_True:TRex_False;
	case 'x': return FUNC8(c)?TRex_True:TRex_False;
	case 'X': return !FUNC8(c)?TRex_True:TRex_False;
	case 'c': return FUNC2(c)?TRex_True:TRex_False;
	case 'C': return !FUNC2(c)?TRex_True:TRex_False;
	case 'p': return FUNC5(c)?TRex_True:TRex_False;
	case 'P': return !FUNC5(c)?TRex_True:TRex_False;
	case 'l': return FUNC4(c)?TRex_True:TRex_False;
	case 'u': return FUNC7(c)?TRex_True:TRex_False;
	}
	return TRex_False; /*cannot happen*/
}