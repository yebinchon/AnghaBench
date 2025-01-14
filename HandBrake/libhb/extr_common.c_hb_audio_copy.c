
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {void* name; } ;
struct TYPE_11__ {void* name; } ;
struct TYPE_12__ {TYPE_1__ in; TYPE_2__ out; } ;
struct TYPE_13__ {TYPE_3__ config; } ;
typedef TYPE_4__ hb_audio_t ;


 TYPE_4__* calloc (int,int) ;
 int memcpy (TYPE_4__*,TYPE_4__ const*,int) ;
 void* strdup (void*) ;

hb_audio_t *hb_audio_copy(const hb_audio_t *src)
{
    hb_audio_t *audio = ((void*)0);

    if( src )
    {
        audio = calloc(1, sizeof(*audio));
        memcpy(audio, src, sizeof(*audio));
        if ( src->config.out.name )
        {
            audio->config.out.name = strdup(src->config.out.name);
        }
        if ( src->config.in.name )
        {
            audio->config.in.name = strdup(src->config.in.name);
        }
    }
    return audio;
}
