
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;


 int BTC_MEDIA_AUDIO_SINK_CLEAR_TRACK ;
 int btc_a2dp_sink_ctrl (int ,int *) ;

__attribute__((used)) static BOOLEAN btc_a2dp_sink_clear_track(void)
{
    return btc_a2dp_sink_ctrl(BTC_MEDIA_AUDIO_SINK_CLEAR_TRACK, ((void*)0));
}
