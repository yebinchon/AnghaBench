#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_2__ {scalar_t__ u32; } ;
struct sha256_ctx {int* w; int* h; scalar_t__ inlen; TYPE_1__ in; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int* T_K ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sha256_ctx *p)
{
   unsigned i;
   uint32_t s0, s1;
   uint32_t a, b, c, d, e, f, g, h;

   for (i = 0; i < 16; i++)
      p->w[i] = FUNC2(p->in.u32 + i);

   for (i = 16; i < 64; i++)
   {
      s0 = FUNC1(p->w[i - 15],  7) ^ FUNC1(p->w[i - 15], 18) ^ FUNC0(p->w[i - 15],  3);
      s1 = FUNC1(p->w[i -  2], 17) ^ FUNC1(p->w[i -  2], 19) ^ FUNC0(p->w[i -  2], 10);
      p->w[i] = p->w[i - 16] + s0 + p->w[i - 7] + s1;
   }

   a = p->h[0]; b = p->h[1]; c = p->h[2]; d = p->h[3];
   e = p->h[4]; f = p->h[5]; g = p->h[6]; h = p->h[7];

   for (i = 0; i < 64; i++)
   {
      uint32_t t1, t2, maj, ch;

      s0 = FUNC1(a, 2) ^ FUNC1(a, 13) ^ FUNC1(a, 22);
      maj = (a & b) ^ (a & c) ^ (b & c);
      t2  = s0 + maj;
      s1  = FUNC1(e, 6) ^ FUNC1(e, 11) ^ FUNC1(e, 25);
      ch  = (e & f) ^ (~e & g);
      t1  = h + s1 + ch + T_K[i] + p->w[i];

      h   = g;
      g   = f;
      f   = e;
      e   = d + t1;
      d   = c;
      c   = b;
      b   = a;
      a   = t1 + t2;
   }

   p->h[0] += a; p->h[1] += b; p->h[2] += c; p->h[3] += d;
   p->h[4] += e; p->h[5] += f; p->h[6] += g; p->h[7] += h;

   /* Next block */
   p->inlen = 0;
}