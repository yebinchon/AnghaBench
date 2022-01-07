; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_config.c_config_default.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_config.c_config_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32*, i32, i32, i32, i32, double, double, %struct.TYPE_7__*, i32**, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i8** }

@config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CONFIG_VERSION = common dso_local global i32 0, align 4
@vmode = common dso_local global %struct.TYPE_8__* null, align 8
@TYPE_SD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s/roms/\00", align 1
@DEFAULT_PATH = common dso_local global i8* null, align 8
@TYPE_DVD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"dvd:%s/roms/\00", align 1
@PAD_BUTTON_B = common dso_local global i32 0, align 4
@VOICE_MONO_16BIT = common dso_local global i32 0, align 4
@intro_pcm = common dso_local global i64 0, align 8
@intro_pcm_size = common dso_local global i32 0, align 4
@TVNtsc480Prog = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Default Settings restored\00", align 1
@SYSTEM_MD_GAMEPAD = common dso_local global i8* null, align 8
@input = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@NO_SYSTEM = common dso_local global i8* null, align 8
@TYPE_USB = common dso_local global i64 0, align 8
@VI_GM_1_0 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_default() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 54), align 8
  %4 = load i32, i32* @CONFIG_VERSION, align 4
  %5 = call i32 @strncpy(i32 %3, i32 %4, i32 16)
  store i32 150, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 0), align 8
  store i32 100, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 4), align 8
  store i32 39321, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 5), align 4
  store i32 880, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 6), align 8
  store i32 5000, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 7), align 4
  store double 1.000000e+00, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 8), align 8
  store double 1.000000e+00, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 9), align 8
  store double 1.000000e+00, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 10), align 8
  store i32 14, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 11), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 12), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 53), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 52), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 51), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 50), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 49), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 48), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 13), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 47), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 46), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 45), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 44), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 43), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 42), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 41), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 14), align 4
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 15), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 40), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 39), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 16), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 17), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 18), align 4
  %6 = call i64 (...) @VIDEO_HaveComponentCable()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 19), align 8
  br label %10

9:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 19), align 8
  br label %10

10:                                               ; preds = %9, %8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vmode, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 2
  switch i32 %14, label %17 [
    i32 128, label %15
    i32 129, label %16
  ]

15:                                               ; preds = %10
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 20), align 4
  br label %18

16:                                               ; preds = %10
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 20), align 4
  br label %18

17:                                               ; preds = %10
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 20), align 4
  br label %18

18:                                               ; preds = %17, %16, %15
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 22), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 1, i32* %20, align 4
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 22), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 1, i32* %22, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 37), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 36), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 35), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 34), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 23), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 24), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 25), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 33), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 32), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 31), align 8
  store i32 658, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 26), align 4
  store double 1.000000e+02, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 27), align 8
  store double 1.000000e+02, double* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 28), align 8
  %23 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 30), align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @TYPE_SD, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** @DEFAULT_PATH, align 8
  %30 = call i32 @sprintf(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 30), align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @TYPE_SD, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** @DEFAULT_PATH, align 8
  %38 = call i32 @sprintf(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 30), align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @TYPE_SD, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** @DEFAULT_PATH, align 8
  %46 = call i32 @sprintf(i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 30), align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @TYPE_SD, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** @DEFAULT_PATH, align 8
  %54 = call i32 @sprintf(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 30), align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @TYPE_SD, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** @DEFAULT_PATH, align 8
  %62 = call i32 @sprintf(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 30), align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @TYPE_DVD, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** @DEFAULT_PATH, align 8
  %70 = call i32 @sprintf(i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  %71 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 30), align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @TYPE_DVD, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** @DEFAULT_PATH, align 8
  %78 = call i32 @sprintf(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 30), align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @TYPE_DVD, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** @DEFAULT_PATH, align 8
  %86 = call i32 @sprintf(i32 %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 30), align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @TYPE_DVD, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** @DEFAULT_PATH, align 8
  %94 = call i32 @sprintf(i32 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  %95 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 30), align 8
  %96 = getelementptr inbounds i32*, i32** %95, i64 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @TYPE_DVD, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** @DEFAULT_PATH, align 8
  %102 = call i32 @sprintf(i32 %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  %103 = call i32 (...) @config_load()
  store i32 %103, i32* %1, align 4
  %104 = call i32 (...) @PAD_ScanPads()
  %105 = call i32 @PAD_ButtonsHeld(i32 0)
  %106 = load i32, i32* @PAD_BUTTON_B, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %18
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 24), align 4
  %111 = xor i32 %110, 1
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 24), align 4
  %112 = call i32 @ASND_Pause(i32 0)
  %113 = call i32 (...) @ASND_GetFirstUnusedVoice()
  store i32 %113, i32* %2, align 4
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* @VOICE_MONO_16BIT, align 4
  %116 = load i64, i64* @intro_pcm, align 8
  %117 = inttoptr i64 %116 to i32*
  %118 = load i32, i32* @intro_pcm_size, align 4
  %119 = call i32 @ASND_SetVoice(i32 %114, i32 %115, i32 44100, i32 0, i32* %117, i32 %118, i32 200, i32 200, i32* null)
  %120 = call i32 @sleep(i32 2)
  %121 = call i32 @ASND_Pause(i32 1)
  br label %122

122:                                              ; preds = %109, %18
  %123 = call i64 (...) @VIDEO_HaveComponentCable()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 24), align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  store %struct.TYPE_8__* @TVNtsc480Prog, %struct.TYPE_8__** @vmode, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vmode, align 8
  %130 = call i32 @VIDEO_Configure(%struct.TYPE_8__* %129)
  %131 = call i32 (...) @VIDEO_Flush()
  %132 = call i32 (...) @VIDEO_WaitVSync()
  %133 = call i32 (...) @VIDEO_WaitVSync()
  br label %134

134:                                              ; preds = %128, %125, %122
  %135 = load i32, i32* %1, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %139 = call i32 (...) @gx_input_SetDefault()
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %142 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @input, i32 0, i32 0), align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 29), align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, -1
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  br label %153

151:                                              ; preds = %140
  %152 = load i8*, i8** @NO_SYSTEM, align 8
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i8* [ %150, %149 ], [ %152, %151 ]
  %155 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @input, i32 0, i32 0), align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  store i8* %154, i8** %156, align 8
  %157 = call i32 (...) @input_init()
  ret void
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @VIDEO_HaveComponentCable(...) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i32 @config_load(...) #1

declare dso_local i32 @PAD_ScanPads(...) #1

declare dso_local i32 @PAD_ButtonsHeld(i32) #1

declare dso_local i32 @ASND_Pause(i32) #1

declare dso_local i32 @ASND_GetFirstUnusedVoice(...) #1

declare dso_local i32 @ASND_SetVoice(i32, i32, i32, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @VIDEO_Configure(%struct.TYPE_8__*) #1

declare dso_local i32 @VIDEO_Flush(...) #1

declare dso_local i32 @VIDEO_WaitVSync(...) #1

declare dso_local i32 @GUI_WaitPrompt(i8*, i8*) #1

declare dso_local i32 @gx_input_SetDefault(...) #1

declare dso_local i32 @input_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
