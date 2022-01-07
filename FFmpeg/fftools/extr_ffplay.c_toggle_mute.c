
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int muted; } ;
typedef TYPE_1__ VideoState ;



__attribute__((used)) static void toggle_mute(VideoState *is)
{
    is->muted = !is->muted;
}
