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
struct TYPE_3__ {int x; int y; int z; int face; char* text; } ;
typedef  int /*<<< orphan*/  SignList ;
typedef  TYPE_1__ Sign ;

/* Variables and functions */
 int MAX_SIGN_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

void FUNC3(
    SignList *list, int x, int y, int z, int face, const char *text)
{
    FUNC1(list, x, y, z, face);
    Sign sign;
    sign.x = x;
    sign.y = y;
    sign.z = z;
    sign.face = face;
    FUNC2(sign.text, text, MAX_SIGN_LENGTH);
    sign.text[MAX_SIGN_LENGTH - 1] = '\0';
    FUNC0(list, &sign);
}