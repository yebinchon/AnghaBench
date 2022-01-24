#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  my_pcname ;
struct TYPE_12__ {int /*<<< orphan*/  HostIP; } ;
typedef  TYPE_1__ VH ;
typedef  int USHORT ;
typedef  scalar_t__ UINT ;
typedef  int UCHAR ;
struct TYPE_13__ {int Size; int /*<<< orphan*/  Buf; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ BUF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,char*) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 TYPE_2__* FUNC15 () ; 
 TYPE_2__* FUNC16 (void*,scalar_t__) ; 
 int FUNC17 (TYPE_2__*,int*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 unsigned long long FUNC19 () ; 
 int /*<<< orphan*/  WHERE ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int) ; 

bool FUNC23(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size)
{
	BUF *rb;
	USHORT tran_id;
	USHORT flags;
	USHORT num_query;
	USHORT zero1, zero2, zero3;
	UCHAR name_size;
	UCHAR encoded_name[32];
	UCHAR node_type;
	USHORT type, classid;
	UCHAR my_pc_encoded_name[32];
	bool ret = false;
	// Validate arguments
	if (v == NULL || data == NULL)
	{
		return false;
	}

	rb = FUNC16(data, size);

	FUNC17(rb, &tran_id, sizeof(USHORT));

	FUNC17(rb, &flags, sizeof(USHORT));
	flags = FUNC2(flags);

	FUNC17(rb, &num_query, sizeof(USHORT));
	num_query = FUNC2(num_query);

	FUNC17(rb, &zero1, sizeof(USHORT));
	FUNC17(rb, &zero2, sizeof(USHORT));
	FUNC17(rb, &zero3, sizeof(USHORT));

	FUNC17(rb, &name_size, 1);

	FUNC17(rb, encoded_name, 32);

	FUNC17(rb, &node_type, 1);

	FUNC17(rb, &type, sizeof(USHORT));
	type = FUNC2(type);

	if (FUNC17(rb, &classid, sizeof(USHORT)) == sizeof(USHORT))
	{
		classid = FUNC2(classid);

		if (((flags >> 11) & 0x0F) == 0 &&
			num_query == 1 && name_size == 0x20 &&
			zero1 == 0 && zero2 == 0 && zero3 == 0 && node_type == 0 && type == 0x0020 && classid == 0x0001)
		{
			char my_pcname[MAX_SIZE];

			// Get the encoded name of this PC
			FUNC22(my_pcname, sizeof(my_pcname));
			FUNC7(my_pcname, sizeof(my_pcname));

			FUNC1(my_pc_encoded_name, my_pcname);

			if (FUNC0(my_pc_encoded_name, encoded_name, 30) == 0)
			{
				// Assemble the response packet since the name resolution packet which targets this PC name received
				BUF *sb = FUNC15();
				USHORT us;
				UINT ui;
				LIST *ip_list;
				BUF *ip_list_buf;
				bool found = false;

				FUNC20(sb, &tran_id, sizeof(USHORT));

				flags = FUNC2(0x8500);
				FUNC20(sb, &flags, sizeof(USHORT));

				num_query = 0;
				FUNC20(sb, &num_query, sizeof(USHORT));

				us = FUNC2(1);
				FUNC20(sb, &us, sizeof(USHORT));

				us = 0;
				FUNC20(sb, &us, sizeof(USHORT));
				FUNC20(sb, &us, sizeof(USHORT));

				name_size = 0x20;
				FUNC20(sb, &name_size, 1);

				FUNC20(sb, encoded_name, 32);

				node_type = 0;
				FUNC20(sb, &node_type, 1);

				type = FUNC2(type);
				classid = FUNC2(classid);

				FUNC20(sb, &type, sizeof(USHORT));
				FUNC20(sb, &classid, sizeof(USHORT));

				ui = FUNC3((UINT)(FUNC19() / 1000ULL));
				FUNC20(sb, &ui, sizeof(UINT));

				ip_list_buf = FUNC15();

				ip_list = FUNC6();
				if (ip_list != NULL)
				{
					UINT i;

					// Return only private IP if there is a private IP
					for (i = 0;i < FUNC14(ip_list);i++)
					{
						IP *ip = FUNC13(ip_list, i);

						if (FUNC9(ip) && FUNC11(ip) == false && FUNC12(ip) == false)
						{
							if (FUNC10(ip))
							{
								USHORT flags = FUNC2(0x4000);
								UINT ip_uint = FUNC8(ip);

								FUNC20(ip_list_buf, &flags, sizeof(USHORT));
								FUNC20(ip_list_buf, &ip_uint, sizeof(UINT));

								found = true;
							}
						}
					}

					if (found == false)
					{
						// Return all IP if no private IP are found
						for (i = 0;i < FUNC14(ip_list);i++)
						{
							IP *ip = FUNC13(ip_list, i);

							if (FUNC9(ip) && FUNC11(ip) == false && FUNC12(ip) == false)
							{
								USHORT flags = FUNC2(0x4000);
								UINT ip_uint = FUNC8(ip);

								FUNC20(ip_list_buf, &flags, sizeof(USHORT));
								FUNC20(ip_list_buf, &ip_uint, sizeof(UINT));

								found = true;
							}
						}
					}

					FUNC5(ip_list);
				}

				us = FUNC2(ip_list_buf->Size);
				FUNC20(sb, &us, sizeof(USHORT));

				FUNC21(sb, ip_list_buf);

				FUNC18(v, src_ip, src_port, v->HostIP, dest_port, sb->Buf, sb->Size);

				FUNC4(ip_list_buf);

				FUNC4(sb);

				WHERE;
			}
		}
	}

	FUNC4(rb);

	return ret;
}