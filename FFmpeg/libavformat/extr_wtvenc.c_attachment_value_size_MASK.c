#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* value; } ;
struct TYPE_5__ {int size; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(const AVPacket *pkt, const AVDictionaryEntry *e)
{
    return FUNC0("image/jpeg")*2 + 2 + 1 + (e ? FUNC0(e->value)*2 : 0) + 2 + 4 + pkt->size;
}