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
 double HASH_MAX_EFF_LOAD ; 

int FUNC0(int num_buckets){
    /* Differently from load, the effective load also considers tombstones (deleted buckets). */
    return (int)(num_buckets * (1.0 - HASH_MAX_EFF_LOAD));
}