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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int sa_family; int sa_len; } ;
struct secasindex {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct sadb_spirange {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ,struct secasindex*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 int /*<<< orphan*/  FUNC2 (struct sadb_spirange*,struct secasindex*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sadb_mutex ; 

u_int32_t
FUNC5(struct sockaddr      *src,
			struct sockaddr      *dst,
			u_int8_t              proto,
			u_int8_t              mode,
			u_int32_t             reqid,
			struct sadb_spirange *spirange)
{
	u_int32_t         spi;
	struct secasindex saidx;
	
	FUNC1(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);
	
	/* XXX boundary check against sa_len */
	FUNC0(proto, mode, reqid, src, dst, 0, &saidx);
	
	/* make sure if port number is zero. */
	switch (((struct sockaddr *)&saidx.src)->sa_family) {
		case AF_INET:
			if (((struct sockaddr *)&saidx.src)->sa_len != sizeof(struct sockaddr_in))
				return 0;
			((struct sockaddr_in *)&saidx.src)->sin_port = 0;
			break;
		case AF_INET6:
			if (((struct sockaddr *)&saidx.src)->sa_len != sizeof(struct sockaddr_in6))
				return 0;
			((struct sockaddr_in6 *)&saidx.src)->sin6_port = 0;
			break;
		default:
			; /*???*/
	}
	switch (((struct sockaddr *)&saidx.dst)->sa_family) {
		case AF_INET:
			if (((struct sockaddr *)&saidx.dst)->sa_len != sizeof(struct sockaddr_in))
				return 0;
			((struct sockaddr_in *)&saidx.dst)->sin_port = 0;
			break;
		case AF_INET6:
			if (((struct sockaddr *)&saidx.dst)->sa_len != sizeof(struct sockaddr_in6))
				return 0;
			((struct sockaddr_in6 *)&saidx.dst)->sin6_port = 0;
			break;
		default:
			; /*???*/
	}
	
	FUNC3(sadb_mutex);
	
	/* SPI allocation */
	spi = FUNC2(spirange, &saidx);
	
	FUNC4(sadb_mutex);
	
	return spi;
}