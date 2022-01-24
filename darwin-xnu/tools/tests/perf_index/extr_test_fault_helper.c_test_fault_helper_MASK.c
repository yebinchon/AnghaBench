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
typedef  scalar_t__ testtype_t ;

/* Variables and functions */
 int MAP_ANON ; 
 int MAP_FIXED ; 
 int MAP_PRIVATE ; 
 int MEMSIZE ; 
 int PERFINDEX_SUCCESS ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ TESTFAULT ; 
 scalar_t__ TESTZFOD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 () ; 
 char* memblock ; 
 char* FUNC2 (char*,long long,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,long long,int) ; 
 scalar_t__ FUNC4 (char*,long long) ; 

int FUNC5(int thread_id, int num_threads, long long length, testtype_t testtype) {
    char *ptr;
    int pgsz = FUNC1();
    int retval;

    long long num_pages = MEMSIZE / pgsz;
    long long region_len = num_pages/num_threads;
    long long region_start = region_len * thread_id; 
    long long region_end;

    if(thread_id < num_pages % num_threads) {
        region_start += thread_id;
        region_len++;
    }
    else {
        region_start += num_pages % num_threads;
    }

    region_start *= pgsz;
    region_len *= pgsz;
    region_end = region_start + region_len;

    long long left = length;

    while(1) {
        for(ptr = memblock+region_start; ptr<memblock+region_end; ptr+= pgsz) {
            *ptr = 1;
            left--;
            if(left==0)
                break;
        }

        if(left==0)
            break;

        if(testtype == TESTFAULT) {
            retval = FUNC3(memblock+region_start, region_len, PROT_READ) == 0;
            FUNC0(retval == 0, "mprotect failed");
            retval = FUNC3(memblock+region_start, region_len, PROT_READ | PROT_WRITE) == 0;
            FUNC0(retval == 0, "mprotect failed");
        }

        else if(testtype == TESTZFOD) {
            retval = FUNC4(memblock+region_start, region_len) == 0;
            FUNC0(retval == 0, "munmap failed");
            ptr = FUNC2(memblock+region_start, region_len, PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE | MAP_FIXED, -1, 0);
            FUNC0(ptr != 0, "mmap failed");
        }
    }
    return PERFINDEX_SUCCESS;
}