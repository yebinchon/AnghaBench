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
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  magic ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  outcounter ; 

__attribute__((used)) static uint8 *FUNC3(uint8 *data, int32 len)
{
 /* UDP packet data header is 12 bytes in length. */
 static uint8 buf[12+32]; // arbitrary 32.
 
 FUNC1(buf+4,magic);
 FUNC1(buf+8,outcounter);
 FUNC2(buf+12,data,len);
 FUNC1(buf,FUNC0(0,buf+4,8+len));
 return(buf);
}