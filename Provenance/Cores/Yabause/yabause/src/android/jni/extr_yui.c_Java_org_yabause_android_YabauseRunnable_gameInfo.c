
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int jstring ;
typedef int * jobject ;
typedef int jmethodID ;
typedef int jclass ;
typedef int jboolean ;
struct TYPE_19__ {int gamename; int peripheral; int region; int cdinfo; int date; int version; int itemnum; int company; int system; } ;
struct TYPE_18__ {char* (* GetStringUTFChars ) (TYPE_1__**,int *,int *) ;int * (* NewObject ) (TYPE_1__**,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;int (* NewStringUTF ) (TYPE_1__**,int ) ;int (* GetMethodID ) (TYPE_1__**,int ,char*,char*) ;int (* FindClass ) (TYPE_1__**,char*) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef TYPE_2__ GameInfo ;


 int GameInfoFromPath (char const*,TYPE_2__*) ;
 char* stub1 (TYPE_1__**,int *,int *) ;
 int stub10 (TYPE_1__**,int ) ;
 int stub11 (TYPE_1__**,int ) ;
 int stub12 (TYPE_1__**,int ) ;
 int * stub13 (TYPE_1__**,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int stub2 (TYPE_1__**,char*) ;
 int stub3 (TYPE_1__**,int ,char*,char*) ;
 int stub4 (TYPE_1__**,int ) ;
 int stub5 (TYPE_1__**,int ) ;
 int stub6 (TYPE_1__**,int ) ;
 int stub7 (TYPE_1__**,int ) ;
 int stub8 (TYPE_1__**,int ) ;
 int stub9 (TYPE_1__**,int ) ;

jobject Java_org_yabause_android_YabauseRunnable_gameInfo( JNIEnv* env, jobject obj, jobject path )
{
    jmethodID cons;
    jboolean dummy;
    jclass c;
    jstring system, company, itemnum, version, date, cdinfo, region, peripheral, gamename;
    GameInfo info;
    const char * filename = (*env)->GetStringUTFChars(env, path, &dummy);

    if (! GameInfoFromPath(filename, &info))
    {
       return ((void*)0);
    }

    c = (*env)->FindClass(env, "org/yabause/android/GameInfo");
    cons = (*env)->GetMethodID(env, c, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");

    system = (*env)->NewStringUTF(env, info.system);
    company = (*env)->NewStringUTF(env, info.company);
    itemnum = (*env)->NewStringUTF(env, info.itemnum);
    version = (*env)->NewStringUTF(env, info.version);
    date = (*env)->NewStringUTF(env, info.date);
    cdinfo = (*env)->NewStringUTF(env, info.cdinfo);
    region = (*env)->NewStringUTF(env, info.region);
    peripheral = (*env)->NewStringUTF(env, info.peripheral);
    gamename = (*env)->NewStringUTF(env, info.gamename);

    return (*env)->NewObject(env, c, cons, system, company, itemnum, version, date, cdinfo, region, peripheral, gamename);
}
