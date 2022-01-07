
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef int hb_dict_t ;


 int * hb_dict_get (int *,char*) ;
 int * hb_dict_init () ;
 int hb_dict_set (int *,char*,int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static hb_dict_t * source_audio_track_used(hb_dict_t *track_dict, int track)
{

    char key[8];
    snprintf(key, sizeof(key), "%d", track);

    hb_dict_t *used = hb_dict_get(track_dict, key);
    if (used == ((void*)0))
    {
        used = hb_dict_init();
        hb_dict_set(track_dict, key, used);
    }
    return used;
}
