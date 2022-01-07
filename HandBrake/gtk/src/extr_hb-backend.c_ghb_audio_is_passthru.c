
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int gboolean ;


 int HB_ACODEC_PASS_FLAG ;
 int g_debug (char*) ;

gboolean
ghb_audio_is_passthru(gint acodec)
{
    g_debug("ghb_audio_is_passthru () \n");
    return (acodec & HB_ACODEC_PASS_FLAG) != 0;
}
