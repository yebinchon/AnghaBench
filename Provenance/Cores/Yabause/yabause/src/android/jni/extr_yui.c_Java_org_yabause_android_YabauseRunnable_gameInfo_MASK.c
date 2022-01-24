#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jstring ;
typedef  int /*<<< orphan*/ * jobject ;
typedef  int /*<<< orphan*/  jmethodID ;
typedef  int /*<<< orphan*/  jclass ;
typedef  int /*<<< orphan*/  jboolean ;
struct TYPE_19__ {int /*<<< orphan*/  gamename; int /*<<< orphan*/  peripheral; int /*<<< orphan*/  region; int /*<<< orphan*/  cdinfo; int /*<<< orphan*/  date; int /*<<< orphan*/  version; int /*<<< orphan*/  itemnum; int /*<<< orphan*/  company; int /*<<< orphan*/  system; } ;
struct TYPE_18__ {char* (* GetStringUTFChars ) (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* NewObject ) (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* NewStringUTF ) (TYPE_1__**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* GetMethodID ) (TYPE_1__**,int /*<<< orphan*/ ,char*,char*) ;int /*<<< orphan*/  (* FindClass ) (TYPE_1__**,char*) ;} ;
typedef  TYPE_1__* JNIEnv ;
typedef  TYPE_2__ GameInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,TYPE_2__*) ; 
 char* FUNC1 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__**,int /*<<< orphan*/ ) ; 

jobject FUNC14( JNIEnv* env, jobject obj, jobject path )
{
    jmethodID cons;
    jboolean dummy;
    jclass c;
    jstring system, company, itemnum, version, date, cdinfo, region, peripheral, gamename;
    GameInfo info;
    const char * filename = (*env)->GetStringUTFChars(env, path, &dummy);

    if (! FUNC0(filename, &info))
    {
       return NULL;
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