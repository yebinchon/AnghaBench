#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* name; } ;
struct TYPE_11__ {void* name; } ;
struct TYPE_12__ {TYPE_1__ in; TYPE_2__ out; } ;
struct TYPE_13__ {TYPE_3__ config; } ;
typedef  TYPE_4__ hb_audio_t ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_4__ const*,int) ; 
 void* FUNC2 (void*) ; 

hb_audio_t *FUNC3(const hb_audio_t *src)
{
    hb_audio_t *audio = NULL;

    if( src )
    {
        audio = FUNC0(1, sizeof(*audio));
        FUNC1(audio, src, sizeof(*audio));
        if ( src->config.out.name )
        {
            audio->config.out.name = FUNC2(src->config.out.name);
        }
        if ( src->config.in.name )
        {
            audio->config.in.name = FUNC2(src->config.in.name);
        }
    }
    return audio;
}