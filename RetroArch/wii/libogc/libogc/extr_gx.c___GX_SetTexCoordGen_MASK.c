#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int dirtyState; int genMode; int* texCoordGen; int* texCoordGen2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int,int) ; 
 TYPE_1__* __gx ; 

__attribute__((used)) static void FUNC2()
{
	u32 i,mask;
	u32 texcoord;

	if(__gx->dirtyState&0x02000000) FUNC0(0x103f,(__gx->genMode&0xf));

	i = 0;
	texcoord = 0x1040;
	mask = FUNC1(__gx->dirtyState,16,8);
	while(mask) {
		if(mask&0x0001) {
			FUNC0(texcoord,__gx->texCoordGen[i]);
			FUNC0((texcoord+0x10),__gx->texCoordGen2[i]);
		}
		mask >>= 1;
		texcoord++;
		i++;
	}
}