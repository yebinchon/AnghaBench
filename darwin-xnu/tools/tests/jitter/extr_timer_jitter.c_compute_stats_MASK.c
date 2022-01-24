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
typedef  size_t uint64_t ;

/* Variables and functions */
 scalar_t__ INT64_MAX ; 
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (double,int) ; 
 double FUNC2 (double) ; 

void 
FUNC3(double *values, uint64_t count, double *average_magnitudep, double *maxp, double *minp, double *stddevp)
{
	uint64_t i;
	double _sum = 0;
	double _max = 0;
	double _min = (double)INT64_MAX;
	double _avg = 0;
	double _dev = 0;

	for (i = 0; i < count; i++) {
		_sum += FUNC0(values[i]);
		_max = values[i] > _max ? values[i] : _max;
		_min = values[i] < _min ? values[i] : _min;
	}

	_avg = _sum / (double)count;
	
	_dev = 0;
	for (i = 0; i < count; i++) {
		_dev += FUNC1((values[i] - _avg), 2);
	}
	
	_dev /= count;
	_dev = FUNC2(_dev);

	*average_magnitudep = _avg;
	*maxp = _max;
	*minp = _min;
	*stddevp = _dev;
}