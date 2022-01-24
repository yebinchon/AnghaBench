#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
struct TYPE_5__ {TYPE_2__* drmdata; TYPE_2__* extradata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void FUNC2( VC_CONTAINER_T *context, VC_CONTAINER_TRACK_T *p_track )
{
   FUNC0(context);
   if(p_track)
   {
      if(p_track->priv->extradata) FUNC1(p_track->priv->extradata);
      if(p_track->priv->drmdata) FUNC1(p_track->priv->drmdata);
      FUNC1(p_track);
   }
}