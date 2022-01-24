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
typedef  int int64_t ;
typedef  int /*<<< orphan*/  AVInteger ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(void){
    int64_t a,b;

    for(a=7; a<256*256*256; a+=13215){
        for(b=3; b<256*256*256; b+=27118){
            AVInteger ai= FUNC4(a);
            AVInteger bi= FUNC4(b);

            FUNC1(FUNC3(ai) == a);
            FUNC1(FUNC3(bi) == b);
            FUNC1(FUNC3(FUNC0(ai,bi)) == a+b);
            FUNC1(FUNC3(FUNC9(ai,bi)) == a-b);
            FUNC1(FUNC3(FUNC7(ai,bi)) == a*b);
            FUNC1(FUNC3(FUNC8(ai, 9)) == a>>9);
            FUNC1(FUNC3(FUNC8(ai,-9)) == a<<9);
            FUNC1(FUNC3(FUNC8(ai, 17)) == a>>17);
            FUNC1(FUNC3(FUNC8(ai,-17)) == a<<17);
            FUNC1(FUNC6(ai) == FUNC5(a));
            FUNC1(FUNC3(FUNC2(ai,bi)) == a/b);
        }
    }
    return 0;
}