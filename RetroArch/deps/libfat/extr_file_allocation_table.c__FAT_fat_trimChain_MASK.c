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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  PARTITION ;

/* Variables and functions */
 scalar_t__ CLUSTER_EOF ; 
 scalar_t__ CLUSTER_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

uint32_t FUNC3 (PARTITION* partition, uint32_t startCluster, unsigned int chainLength)
{
   uint32_t nextCluster;

   if (chainLength == 0)
   {
      /* Drop the entire chain */
      FUNC0 (partition, startCluster);
      return CLUSTER_FREE;
   }

   /* Find the last cluster in the chain, and the one after it */
   chainLength--;
   nextCluster = FUNC1 (partition, startCluster);
   while ((chainLength > 0) && (nextCluster != CLUSTER_FREE) && (nextCluster != CLUSTER_EOF))
   {
      chainLength--;
      startCluster = nextCluster;
      nextCluster = FUNC1 (partition, startCluster);
   }

   /* Drop all clusters after the last in the chain */
   if (nextCluster != CLUSTER_FREE && nextCluster != CLUSTER_EOF)
      FUNC0 (partition, nextCluster);

   /* Mark the last cluster in the chain as the end of the file */
   FUNC2 (partition, startCluster, CLUSTER_EOF);

   return startCluster;
}