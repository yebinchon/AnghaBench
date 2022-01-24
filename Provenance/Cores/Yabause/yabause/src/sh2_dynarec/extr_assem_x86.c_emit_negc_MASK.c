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
typedef  scalar_t__ pointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 scalar_t__ out ; 

void FUNC8(int rs, int rt, int sr)
{
  FUNC0(rs>=0&&rs<8);
  if(rt<0) {
    FUNC7(sr,1,sr); // Get C flag
    FUNC3((pointer)out+10); // 6
    FUNC5(rs,rs); // 2
    FUNC5(rs,rs); // 2
    FUNC1(sr,sr); // Save C flag
  }else{
    if(rs!=rt) FUNC4(rs,rt);
    FUNC7(sr,1,sr); // Get C flag
    FUNC3((pointer)out+9); // 6
    FUNC2(rt,-1,rt); // 3
    FUNC1(sr,sr); // Save C flag
    FUNC6(rt,rt);
  }
}