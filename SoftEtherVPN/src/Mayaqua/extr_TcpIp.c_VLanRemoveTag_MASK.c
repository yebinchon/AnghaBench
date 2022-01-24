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
typedef  int USHORT ;
typedef  int UINT ;
typedef  scalar_t__ UCHAR ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MAC_PROTO_TAGVLAN ; 
 int FUNC1 (scalar_t__*) ; 

bool FUNC2(void **packet_data, UINT *packet_size, UINT vlan_id, UINT vlan_tpid)
{
	UCHAR *src_data;
	UINT src_size;
	USHORT vlan_tpid_ushort;
	UCHAR *vlan_tpid_uchar;
	// Validate arguments
	if (packet_data == NULL || *packet_data == NULL || packet_size == NULL ||
		*packet_size < 14)
	{
		return false;
	}

	if (vlan_tpid == 0)
	{
		vlan_tpid = MAC_PROTO_TAGVLAN;
	}

	vlan_tpid_ushort = FUNC0((USHORT)vlan_tpid);
	vlan_tpid_uchar = (UCHAR *)(&vlan_tpid_ushort);

	src_data = (UCHAR *)(*packet_data);
	src_size = *packet_size;

	if (src_data[12] == vlan_tpid_uchar[0] && src_data[13] == vlan_tpid_uchar[1])
	{
		if (src_size >= 18)
		{
			USHORT vlan_ushort;

			vlan_ushort = FUNC1(&src_data[14]);
			vlan_ushort = vlan_ushort & 0xFFF;

			if (vlan_id == 0 || (vlan_ushort == vlan_id))
			{
				UINT dest_size = src_size - 4;
				UINT i;

				for (i = 12;i < dest_size;i++)
				{
					src_data[i] = src_data[i + 4];
				}

				*packet_size = dest_size;

				return true;
			}
		}
	}

	return false;
}