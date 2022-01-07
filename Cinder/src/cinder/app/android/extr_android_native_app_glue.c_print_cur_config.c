
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_app {int config; } ;


 int AConfiguration_getCountry (int ,char*) ;
 int AConfiguration_getDensity (int ) ;
 int AConfiguration_getKeyboard (int ) ;
 int AConfiguration_getKeysHidden (int ) ;
 int AConfiguration_getLanguage (int ,char*) ;
 int AConfiguration_getMcc (int ) ;
 int AConfiguration_getMnc (int ) ;
 int AConfiguration_getNavHidden (int ) ;
 int AConfiguration_getNavigation (int ) ;
 int AConfiguration_getOrientation (int ) ;
 int AConfiguration_getScreenLong (int ) ;
 int AConfiguration_getScreenSize (int ) ;
 int AConfiguration_getSdkVersion (int ) ;
 int AConfiguration_getTouchscreen (int ) ;
 int AConfiguration_getUiModeNight (int ) ;
 int AConfiguration_getUiModeType (int ) ;
 int LOGV (char*,int ,int ,char,char,char,char,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void print_cur_config(struct android_app* android_app) {
    char lang[2], country[2];
    AConfiguration_getLanguage(android_app->config, lang);
    AConfiguration_getCountry(android_app->config, country);

    LOGV("Config: mcc=%d mnc=%d lang=%c%c cnt=%c%c orien=%d touch=%d dens=%d "
            "keys=%d nav=%d keysHid=%d navHid=%d sdk=%d size=%d long=%d "
            "modetype=%d modenight=%d",
            AConfiguration_getMcc(android_app->config),
            AConfiguration_getMnc(android_app->config),
            lang[0], lang[1], country[0], country[1],
            AConfiguration_getOrientation(android_app->config),
            AConfiguration_getTouchscreen(android_app->config),
            AConfiguration_getDensity(android_app->config),
            AConfiguration_getKeyboard(android_app->config),
            AConfiguration_getNavigation(android_app->config),
            AConfiguration_getKeysHidden(android_app->config),
            AConfiguration_getNavHidden(android_app->config),
            AConfiguration_getSdkVersion(android_app->config),
            AConfiguration_getScreenSize(android_app->config),
            AConfiguration_getScreenLong(android_app->config),
            AConfiguration_getUiModeType(android_app->config),
            AConfiguration_getUiModeNight(android_app->config));
}
