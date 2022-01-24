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
 void* FUNC0 (char*) ; 
 char* defdemoname ; 
 int /*<<< orphan*/  ga_playdemo ; 
 int /*<<< orphan*/  gameaction ; 
 void* noblit ; 
 void* nodrawers ; 
 int singletics ; 
 int timingdemo ; 

void FUNC1 (char* name) 
{ 	 
    nodrawers = FUNC0 ("-nodraw"); 
    noblit = FUNC0 ("-noblit"); 
    timingdemo = true; 
    singletics = true; 

    defdemoname = name; 
    gameaction = ga_playdemo; 
}