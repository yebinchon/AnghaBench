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
struct TYPE_3__ {int code_bits; int nomore; unsigned char marker; unsigned int code_buffer; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stbi__jpeg ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(stbi__jpeg *j)
{
   do {
      unsigned int b = j->nomore ? 0 : FUNC0(j->s);
      if (b == 0xff) {
         int c = FUNC0(j->s);
         while (c == 0xff) c = FUNC0(j->s); // consume fill bytes
         if (c != 0) {
            j->marker = (unsigned char) c;
            j->nomore = 1;
            return;
         }
      }
      j->code_buffer |= b << (24 - j->code_bits);
      j->code_bits += 8;
   } while (j->code_bits <= 24);
}