
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_list_t ;
typedef int hb_audio_t ;


 int hb_audio_copy (int *) ;
 int hb_list_add (int *,int ) ;
 int hb_list_count (int const*) ;
 int * hb_list_init () ;
 int * hb_list_item (int const*,int) ;

hb_list_t *hb_audio_list_copy(const hb_list_t *src)
{
    hb_list_t *list = hb_list_init();
    hb_audio_t *audio = ((void*)0);
    int i;

    if( src )
    {
        for( i = 0; i < hb_list_count(src); i++ )
        {
            if( ( audio = hb_list_item( src, i ) ) )
            {
                hb_list_add( list, hb_audio_copy(audio) );
            }
        }
    }
    return list;
}
