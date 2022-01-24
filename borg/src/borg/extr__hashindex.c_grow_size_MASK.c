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
 int FUNC0 (int*) ; 
 int* hash_sizes ; 
 int FUNC1 (int) ; 

int FUNC2(int current){
    int i = FUNC1(current) + 1;
    int elems = FUNC0(hash_sizes);
    if (i >= elems)
        return hash_sizes[elems - 1];
    return hash_sizes[i];
}