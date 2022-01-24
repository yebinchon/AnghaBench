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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  int /*<<< orphan*/  ILookInStream ;
typedef  int /*<<< orphan*/  CSzData ;
typedef  int /*<<< orphan*/  CSzAr ;
typedef  int /*<<< orphan*/  CBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static SRes FUNC4(
      ILookInStream *inStream,
      CSzData *sd,
      CBuf *outBuffer,
      uint64_t baseOffset,
      ISzAlloc *allocTemp)
{
   CSzAr p;
   uint64_t *unpackSizes = 0;
   uint8_t *digestsDefined = 0;
   uint32_t *digests = 0;
   SRes res;
   FUNC2(&p);
   res = FUNC3(inStream, sd, outBuffer, baseOffset,
         &p, &unpackSizes, &digestsDefined, &digests,
         allocTemp);
   FUNC1(&p, allocTemp);
   FUNC0(allocTemp, unpackSizes);
   FUNC0(allocTemp, digestsDefined);
   FUNC0(allocTemp, digests);
   return res;
}