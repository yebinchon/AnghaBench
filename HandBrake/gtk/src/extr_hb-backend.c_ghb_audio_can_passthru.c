
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int gboolean ;


 int HB_ACODEC_PASS_MASK ;
 int g_debug (char*) ;

gboolean
ghb_audio_can_passthru(gint acodec)
{
    g_debug("ghb_audio_can_passthru () \n");
    return (acodec & HB_ACODEC_PASS_MASK) != 0;
}
