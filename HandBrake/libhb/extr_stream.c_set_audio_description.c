
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char* native_name; char* eng_name; char* iso639_2; } ;
typedef TYPE_3__ iso639_lang_t ;
struct TYPE_7__ {int iso639_2; int simple; } ;
struct TYPE_8__ {TYPE_1__ lang; } ;
struct TYPE_10__ {TYPE_2__ config; } ;
typedef TYPE_4__ hb_audio_t ;


 int snprintf (int ,int,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void set_audio_description(hb_audio_t *audio, iso639_lang_t *lang)
{
    snprintf( audio->config.lang.simple,
              sizeof( audio->config.lang.simple ), "%s",
              strlen( lang->native_name ) ? lang->native_name : lang->eng_name );
    snprintf( audio->config.lang.iso639_2,
              sizeof( audio->config.lang.iso639_2 ), "%s", lang->iso639_2 );
}
