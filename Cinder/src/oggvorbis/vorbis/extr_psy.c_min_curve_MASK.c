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
 int EHMER_MAX ; 

__attribute__((used)) static void FUNC0(float *c,
                       float *c2){
  int i;
  for(i=0;i<EHMER_MAX;i++)if(c2[i]<c[i])c[i]=c2[i];
}