
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int buf ;


 int AV_CH_FRONT_CENTER ;
 int AV_LOG_VERBOSE ;
 int av_get_channel_layout_string (char*,int,int,int) ;
 int av_log (void*,int ,char*,char*) ;

__attribute__((used)) static int clean_layout(void *s, int64_t layout){
    if(layout && layout != AV_CH_FRONT_CENTER && !(layout&(layout-1))) {
        char buf[128];
        av_get_channel_layout_string(buf, sizeof(buf), -1, layout);
        av_log(s, AV_LOG_VERBOSE, "Treating %s as mono\n", buf);
        return AV_CH_FRONT_CENTER;
    }

    return layout;
}
