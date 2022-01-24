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
typedef  int /*<<< orphan*/  UInt8 ;
typedef  int UInt32 ;

/* Variables and functions */
 int MP4DecConfigDescrTag ; 
 int MP4DecSpecificDescrTag ; 
 int MP4ESDescrTag ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 long noErr ; 
 int FUNC2 (int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static long FUNC3(void* descExt, UInt8 **buffer, UInt32 *size, int versionFlags)
{
    UInt8 *esds = (UInt8*)descExt;
    int tag, len;
    *size = 0;

    if (versionFlags)
        esds += 4; // version + flags
    FUNC2(&esds, &tag);
    esds += 2;     // ID
    if (tag == MP4ESDescrTag)
        esds++;    // priority

    FUNC2(&esds, &tag);
    if (tag == MP4DecConfigDescrTag)
    {
        esds++;    // object type id
        esds++;    // stream type
        esds += 3; // buffer size db
        esds += 4; // max bitrate
        esds += 4; // average bitrate

        len = FUNC2(&esds, &tag);
        if (tag == MP4DecSpecificDescrTag)
        {
            *buffer = FUNC0(1, len + 8);
            if (*buffer)
            {
                FUNC1(*buffer, esds, len);
                *size = len;
            }
        }
    }

    return noErr;
}