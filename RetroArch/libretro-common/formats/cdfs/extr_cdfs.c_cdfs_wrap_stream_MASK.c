#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  intfstream_t ;
struct TYPE_4__ {unsigned int pregap_sectors; int /*<<< orphan*/ * stream; } ;
typedef  TYPE_1__ cdfs_track_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static cdfs_track_t* FUNC2(intfstream_t* stream, unsigned pregap_sectors)
{
   cdfs_track_t* track;

   if (stream == NULL)
      return NULL;

   track = (cdfs_track_t*)FUNC0(1, sizeof(*track));
   track->stream = stream;
   track->pregap_sectors = pregap_sectors;
   FUNC1(track);
   return track;
}