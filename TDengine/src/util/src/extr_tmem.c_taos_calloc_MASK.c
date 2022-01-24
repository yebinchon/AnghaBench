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
 void* FUNC0 (unsigned int,unsigned int) ; 
 int FUNC1 (unsigned int,char*) ; 

void* FUNC2(unsigned int num, unsigned int size, char* _func) {
  
  if (false == FUNC1(size, _func)) {
    return NULL;
  }
  
  void *p = NULL;    
  p = FUNC0(num, size); 
  return p;
}