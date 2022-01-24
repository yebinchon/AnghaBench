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
typedef  enum MXFMetadataSetType { ____Placeholder_MXFMetadataSetType } MXFMetadataSetType ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  uuid_base ; 

__attribute__((used)) static void FUNC2(AVIOContext *pb, enum MXFMetadataSetType type, int value)
{
    FUNC1(pb, uuid_base, 12);
    FUNC0(pb, type);
    FUNC0(pb, value);
}