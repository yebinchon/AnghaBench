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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int timestamp ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(AVIOContext *pb, int id, int64_t timestamp)
{
    FUNC0(pb, (id << 4) |  (((timestamp >> 30) & 0x07)   << 1) | 1);
    FUNC1(pb, (uint16_t)((((timestamp >> 15) & 0x7fff) << 1) | 1));
    FUNC1(pb, (uint16_t)((((timestamp)       & 0x7fff) << 1) | 1));
}