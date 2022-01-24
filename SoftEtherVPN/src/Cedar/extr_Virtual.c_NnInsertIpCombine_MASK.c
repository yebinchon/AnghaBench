#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  scalar_t__ UINT64 ;
typedef  void* UINT ;
typedef  void* UCHAR ;
struct TYPE_10__ {int SrcIsLocalMacAddr; int MacBroadcast; scalar_t__ DataReserved; int /*<<< orphan*/  Data; void* Ttl; void* Protocol; int /*<<< orphan*/  IpParts; scalar_t__ Size; scalar_t__ Expire; int /*<<< orphan*/  Id; void* SrcIP; void* DestIP; } ;
struct TYPE_9__ {scalar_t__ CurrentIpQuota; int /*<<< orphan*/  IpCombine; TYPE_1__* v; } ;
struct TYPE_8__ {scalar_t__ Now; } ;
typedef  TYPE_2__ NATIVE_NAT ;
typedef  TYPE_3__ IP_COMBINE ;

/* Variables and functions */
 scalar_t__ IP_COMBINE_INITIAL_BUF_SIZE ; 
 scalar_t__ IP_COMBINE_TIMEOUT ; 
 scalar_t__ IP_COMBINE_WAIT_QUEUE_SIZE_QUOTA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int) ; 

IP_COMBINE *FUNC4(NATIVE_NAT *t, UINT src_ip, UINT dest_ip, USHORT id, UCHAR protocol, bool mac_broadcast, UCHAR ttl, bool src_is_localmac)
{
	IP_COMBINE *c;
	// Validate arguments
	if (t == NULL)
	{
		return NULL;
	}

	// Examine the quota
	if ((t->CurrentIpQuota + IP_COMBINE_INITIAL_BUF_SIZE) > IP_COMBINE_WAIT_QUEUE_SIZE_QUOTA)
	{
		// IP packet can not be stored any more
		return NULL;
	}

	c = FUNC3(sizeof(IP_COMBINE));
	c->SrcIsLocalMacAddr = src_is_localmac;
	c->DestIP = dest_ip;
	c->SrcIP = src_ip;
	c->Id = id;
	c->Expire = t->v->Now + (UINT64)IP_COMBINE_TIMEOUT;
	c->Size = 0;
	c->IpParts = FUNC2(NULL);
	c->Protocol = protocol;
	c->MacBroadcast = mac_broadcast;
	c->Ttl = ttl;

	// Secure the memory
	c->DataReserved = IP_COMBINE_INITIAL_BUF_SIZE;
	c->Data = FUNC1(c->DataReserved);
	t->CurrentIpQuota += c->DataReserved;

	FUNC0(t->IpCombine, c);

	return c;
}