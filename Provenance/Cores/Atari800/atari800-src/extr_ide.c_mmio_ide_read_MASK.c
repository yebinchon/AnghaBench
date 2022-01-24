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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct ide_device {int* upperhalf; int cycle; int data; int /*<<< orphan*/  do_8bit; } ;

/* Variables and functions */
 void* FUNC0 (struct ide_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ide_device*,int) ; 

__attribute__((used)) static uint8_t FUNC2(struct ide_device *s, int addr) {
    uint16_t ret;   /* will be cast at return */

    addr &= 15;

    if (addr == 0) {
        if (!s->do_8bit) {
            ret = FUNC0(s, 0);
            s->upperhalf[0] = ret & 0xff00;
            return ret;
        }
        if (!s->cycle) {
            s->data = FUNC0(s, 0);
            ret = s->data & 0xff;
        } else {
            ret = s->data >> 8;
        }
        s->cycle = !s->cycle;
        return ret;
    } else if (addr >= 8) {
        return s->upperhalf[addr-8] >> 8;
    } else {
        ret = FUNC1(s, addr);
        s->upperhalf[addr] = ret & 0xff00;
        return ret;
    }
}