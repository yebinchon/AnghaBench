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
struct TYPE_3__ {scalar_t__ tmpbuf_ptr; scalar_t__ tmpbuf; } ;
typedef  TYPE_1__ al_t ;

/* Variables and functions */
 scalar_t__ BUFSIZE ; 
 size_t FUNC0 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,size_t) ; 

__attribute__((used)) static size_t FUNC2(al_t *al, const void *buf, size_t size)
{
   size_t read_size = FUNC0(BUFSIZE - al->tmpbuf_ptr, size);
   FUNC1(al->tmpbuf + al->tmpbuf_ptr, buf, read_size);
   al->tmpbuf_ptr += read_size;
   return read_size;
}