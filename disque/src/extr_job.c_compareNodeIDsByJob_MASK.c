#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* id; } ;
typedef  TYPE_1__ job ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ clusterNode ;

/* Variables and functions */
 int CLUSTER_NAMELEN ; 
 int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC2(clusterNode *nodea, clusterNode *nodeb, job *j) {
    int i;
    char ida[CLUSTER_NAMELEN], idb[CLUSTER_NAMELEN];
    FUNC1(ida,nodea->name,CLUSTER_NAMELEN);
    FUNC1(idb,nodeb->name,CLUSTER_NAMELEN);
    for (i = 0; i < CLUSTER_NAMELEN; i++) {
        /* The Job ID has 24 bytes of pseudo random bits starting at
         * offset 11. */
        ida[i] ^= j->id[11 + i%24];
        idb[i] ^= j->id[11 + i%24];
    }
    return FUNC0(ida,idb,CLUSTER_NAMELEN);
}