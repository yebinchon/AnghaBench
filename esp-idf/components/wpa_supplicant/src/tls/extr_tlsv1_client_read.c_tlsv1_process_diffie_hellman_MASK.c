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
typedef  int /*<<< orphan*/  u8 ;
struct tlsv1_client {scalar_t__ dh_p_len; int* dh_p; int dh_g_len; int* dh_g; scalar_t__ dh_ys_len; int* dh_ys; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tlsv1_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC6(struct tlsv1_client *conn,
					const u8 *buf, size_t len)
{
	const u8 *pos, *end;

	FUNC3(conn);

	pos = buf;
	end = buf + len;

	if (end - pos < 3)
		goto fail;
	conn->dh_p_len = FUNC0(pos);
	pos += 2;
	if (conn->dh_p_len == 0 || end - pos < (int) conn->dh_p_len) {
		FUNC5(MSG_DEBUG, "TLSv1: Invalid dh_p length %lu",
			   (unsigned long) conn->dh_p_len);
		goto fail;
	}
	conn->dh_p = FUNC1(conn->dh_p_len);
	if (conn->dh_p == NULL)
		goto fail;
	FUNC2(conn->dh_p, pos, conn->dh_p_len);
	pos += conn->dh_p_len;
	FUNC4(MSG_DEBUG, "TLSv1: DH p (prime)",
		    conn->dh_p, conn->dh_p_len);

	if (end - pos < 3)
		goto fail;
	conn->dh_g_len = FUNC0(pos);
	pos += 2;
	if (conn->dh_g_len == 0 || end - pos < (int) conn->dh_g_len)
		goto fail;
	conn->dh_g = FUNC1(conn->dh_g_len);
	if (conn->dh_g == NULL)
		goto fail;
	FUNC2(conn->dh_g, pos, conn->dh_g_len);
	pos += conn->dh_g_len;
	FUNC4(MSG_DEBUG, "TLSv1: DH g (generator)",
		    conn->dh_g, conn->dh_g_len);
	if (conn->dh_g_len == 1 && conn->dh_g[0] < 2)
		goto fail;

	if (end - pos < 3)
		goto fail;
	conn->dh_ys_len = FUNC0(pos);
	pos += 2;
	if (conn->dh_ys_len == 0 || end - pos < (int) conn->dh_ys_len)
		goto fail;
	conn->dh_ys = FUNC1(conn->dh_ys_len);
	if (conn->dh_ys == NULL)
		goto fail;
	FUNC2(conn->dh_ys, pos, conn->dh_ys_len);
	pos += conn->dh_ys_len;
	FUNC4(MSG_DEBUG, "TLSv1: DH Ys (server's public value)",
		    conn->dh_ys, conn->dh_ys_len);

	return 0;

fail:
	FUNC5(MSG_DEBUG, "TLSv1: Processing DH params failed");
	FUNC3(conn);
	return -1;
}