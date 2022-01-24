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
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_3__ {scalar_t__ status; scalar_t__ maxlen; scalar_t__ len; int /*<<< orphan*/  data; scalar_t__ channel; } ;
typedef  TYPE_1__ UDPpacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ UDPHEADSIZE ; 
 int /*<<< orphan*/  UDPSocket ; 
 int /*<<< orphan*/  data ; 
 int /*<<< orphan*/  outcounter ; 

int FUNC2(uint8 v,uint8 cmd)
{
        UDPpacket upack;
 
        upack.channel=0;
        upack.data=FUNC0(data,1);
        upack.len=upack.maxlen=UDPHEADSIZE+1;
        upack.status=0;
 
        FUNC1(UDPSocket,0,&upack);

        outcounter++; 
        return(1);   
}