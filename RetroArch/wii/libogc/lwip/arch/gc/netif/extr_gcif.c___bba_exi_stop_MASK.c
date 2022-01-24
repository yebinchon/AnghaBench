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
typedef  int /*<<< orphan*/  u32 ;
struct bba_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXI_CHANNEL_0 ; 
 int /*<<< orphan*/  EXI_DEVICE_2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NETIF_DEBUG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __bba_exi_unlockcb ; 
 int /*<<< orphan*/  wait_exi_queue ; 

__attribute__((used)) static __inline__ void FUNC5(struct bba_priv *priv)
{
	u32 level;

	FUNC3(level);
	while(FUNC0(EXI_CHANNEL_0,EXI_DEVICE_2,__bba_exi_unlockcb)==0) {
		FUNC1(NETIF_DEBUG|1,("__bba_exi_wait(exi locked)\n"));
		FUNC2(wait_exi_queue);
	}
	FUNC4(level);
}