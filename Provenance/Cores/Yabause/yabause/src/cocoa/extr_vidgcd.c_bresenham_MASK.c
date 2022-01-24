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

/* Variables and functions */
 int INT_MAX ; 

__attribute__((used)) static int FUNC0( int x1, int y1, int x2, int y2, int x[], int y[])
{
	int dx, dy, xf, yf, a, b, c, i;

	if (x2>x1) {
		dx = x2-x1;
		xf = 1;
	}
	else {
		dx = x1-x2;
		xf = -1;
	}

	if (y2>y1) {
		dy = y2-y1;
		yf = 1;
	}
	else {
		dy = y1-y2;
		yf = -1;
	}

	//burning rangers tries to draw huge shapes
	//this will at least let it run
	if(dx > 999 || dy > 999)
		return INT_MAX;

	if (dx>dy) {
		a = dy+dy;
		c = a-dx;
		b = c-dx;
		for (i=0;i<=dx;i++) {
			x[i] = x1; y[i] = y1;
			x1 += xf;
			if (c<0) {
				c += a;
			}
			else {
				c += b;
				y1 += yf;
			}
		}
		return dx+1;
	}
	else {
		a = dx+dx;
		c = a-dy;
		b = c-dy;
		for (i=0;i<=dy;i++) {
			x[i] = x1; y[i] = y1;
			y1 += yf;
			if (c<0) {
				c += a;
			}
			else {
				c += b;
				x1 += xf;
			}
		}
		return dy+1;
	}
}