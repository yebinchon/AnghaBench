#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  Folders; int /*<<< orphan*/  NumFolders; int /*<<< orphan*/  PackCRCs; int /*<<< orphan*/  PackCRCsDefined; int /*<<< orphan*/  PackSizes; int /*<<< orphan*/  NumPackStreams; } ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  int /*<<< orphan*/  CSzData ;
typedef  TYPE_1__ CSzAr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_ERROR_UNSUPPORTED ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__**,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  k7zIdEnd 131 
#define  k7zIdPackInfo 130 
#define  k7zIdSubStreamsInfo 129 
#define  k7zIdUnpackInfo 128 

__attribute__((used)) static SRes FUNC5(
      CSzData *sd,
      uint64_t *dataOffset,
      CSzAr *p,
      uint32_t *numUnpackStreams,
      uint64_t **unpackSizes, /* allocTemp */
      uint8_t **digestsDefined,   /* allocTemp */
      uint32_t **digests,        /* allocTemp */
      ISzAlloc *alloc,
      ISzAlloc *allocTemp)
{
   for (;;)
   {
      uint64_t type;
      FUNC0(FUNC1(sd, &type));
      if ((uint64_t)(int)type != type)
         return SZ_ERROR_UNSUPPORTED;
      switch((int)type)
      {
         case k7zIdEnd:
            return SZ_OK;
         case k7zIdPackInfo:
            {
               FUNC0(FUNC2(sd, dataOffset, &p->NumPackStreams,
                        &p->PackSizes, &p->PackCRCsDefined, &p->PackCRCs, alloc));
               break;
            }
         case k7zIdUnpackInfo:
            {
               FUNC0(FUNC4(sd, &p->NumFolders, &p->Folders, alloc, allocTemp));
               break;
            }
         case k7zIdSubStreamsInfo:
            {
               FUNC0(FUNC3(sd, p->NumFolders, p->Folders,
                        numUnpackStreams, unpackSizes, digestsDefined, digests, allocTemp));
               break;
            }
         default:
            return SZ_ERROR_UNSUPPORTED;
      }
   }
}