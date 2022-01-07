
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* token; int value; } ;
struct TYPE_5__ {int video_depth; int skip; void* remap; int joy_driver; void* swap; void* sndrate; void* sndcard; void* sound; void* throttle; void* vsync; void* scale; void* scanlines; void* video_height; void* video_width; int video_driver; } ;
struct TYPE_4__ {char* token; int value; } ;


 void* atoi (char*) ;
 void* check_bool (char*) ;
 TYPE_3__* joy_driver_table ;
 TYPE_2__ option ;
 scalar_t__ stricmp (char*,char*) ;
 TYPE_1__* video_driver_table ;

void parse_args(int argc, char **argv)
{
    int i, j;

    for(i = 0; i < argc; i += 1)
    {
        if(stricmp("-vdriver", argv[i]) == 0)
        {
            for(j = 0; video_driver_table[j].token != ((void*)0); j += 1)
            {
                if(stricmp(argv[i+1], video_driver_table[j].token) == 0)
                {
                    option.video_driver = video_driver_table[j].value;
                }
            }
        }

        if(stricmp("-res", argv[i]) == 0)
        {
            option.video_width = atoi(argv[i+1]);
            option.video_height = atoi(argv[i+2]);
        }

        if(stricmp("-depth", argv[i]) == 0)
        {
            option.video_depth = atoi(argv[i+1]);
        }

        if(stricmp("-remap", argv[i]) == 0)
        {
            option.remap = check_bool(argv[i+1]);
        }

        if(stricmp("-scanlines", argv[i]) == 0)
        {
            option.scanlines = check_bool(argv[i+1]);
        }

        if(stricmp("-scale", argv[i]) == 0)
        {
            option.scale = check_bool(argv[i+1]);
        }

        if(stricmp("-vsync", argv[i]) == 0)
        {
            option.vsync = check_bool(argv[i+1]);
        }

        if(stricmp("-throttle", argv[i]) == 0)
        {
            option.throttle = check_bool(argv[i+1]);
        }

        if(stricmp("-skip", argv[i]) == 0)
        {
            option.skip = atoi(argv[i+1]);
            if(!option.skip) option.skip = 1;
        }

        if(stricmp("-sound", argv[i]) == 0)
        {
            option.sound = check_bool(argv[i+1]);
        }

        if(stricmp("-sndcard", argv[i]) == 0)
        {
            option.sndcard = atoi(argv[i+1]);
        }

        if(stricmp("-sndrate", argv[i]) == 0)
        {
            option.sndrate = atoi(argv[i+1]);
        }

        if(stricmp("-swap", argv[i]) == 0)
        {
            option.swap = check_bool(argv[i+1]);
        }

        if(stricmp("-joy", argv[i]) == 0)
        {
            for(j = 0; joy_driver_table[j].token != ((void*)0); j += 1)
            {
                if(stricmp(argv[i+1], joy_driver_table[j].token) == 0)
                {
                    option.joy_driver = joy_driver_table[j].value;
                }
            }
        }
    }

   if(option.remap) option.video_depth = 8;
}
