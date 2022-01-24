#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* token; int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int video_depth; int skip; void* remap; int /*<<< orphan*/  joy_driver; void* swap; void* sndrate; void* sndcard; void* sound; void* throttle; void* vsync; void* scale; void* scanlines; void* video_height; void* video_width; int /*<<< orphan*/  video_driver; } ;
struct TYPE_4__ {char* token; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 TYPE_3__* joy_driver_table ; 
 TYPE_2__ option ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 TYPE_1__* video_driver_table ; 

void FUNC3(int argc, char **argv)
{
    int i, j;

    for(i = 0; i < argc; i += 1)
    {
        if(FUNC2("-vdriver", argv[i]) == 0)
        {
            for(j = 0; video_driver_table[j].token != NULL; j += 1)
            {
                if(FUNC2(argv[i+1], video_driver_table[j].token) == 0)
                {
                    option.video_driver = video_driver_table[j].value;
                }
            }
        }

        if(FUNC2("-res", argv[i]) == 0)
        {
            option.video_width = FUNC0(argv[i+1]);
            option.video_height = FUNC0(argv[i+2]);
        }

        if(FUNC2("-depth", argv[i]) == 0)
        {
            option.video_depth = FUNC0(argv[i+1]);
        }

        if(FUNC2("-remap", argv[i]) == 0)
        {
            option.remap = FUNC1(argv[i+1]);
        }

        if(FUNC2("-scanlines", argv[i]) == 0)
        {
            option.scanlines = FUNC1(argv[i+1]);
        }

        if(FUNC2("-scale", argv[i]) == 0)
        {
            option.scale = FUNC1(argv[i+1]);
        }

        if(FUNC2("-vsync", argv[i]) == 0)
        {
            option.vsync = FUNC1(argv[i+1]);
        }

        if(FUNC2("-throttle", argv[i]) == 0)
        {
            option.throttle = FUNC1(argv[i+1]);
        }

        if(FUNC2("-skip", argv[i]) == 0)
        {
            option.skip = FUNC0(argv[i+1]);
            if(!option.skip) option.skip = 1;
        }

        if(FUNC2("-sound", argv[i]) == 0)
        {
            option.sound = FUNC1(argv[i+1]);
        }

        if(FUNC2("-sndcard", argv[i]) == 0)
        {
            option.sndcard = FUNC0(argv[i+1]);
        }

        if(FUNC2("-sndrate", argv[i]) == 0)
        {
            option.sndrate = FUNC0(argv[i+1]);
        }

        if(FUNC2("-swap", argv[i]) == 0)
        {
            option.swap = FUNC1(argv[i+1]);
        }

        if(FUNC2("-joy", argv[i]) == 0)
        {
            for(j = 0; joy_driver_table[j].token != NULL; j += 1)
            {
                if(FUNC2(argv[i+1], joy_driver_table[j].token) == 0)
                {
                    option.joy_driver = joy_driver_table[j].value;
                }
            }
        }
    }

   if(option.remap) option.video_depth = 8;
}