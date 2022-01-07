; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_main.c_yui_settings_load.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_main.c_yui_settings_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_12__ = type { i8* }
%struct.tm = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@keyfile = common dso_local global i32 0, align 4
@inifile = common dso_local global i32 0, align 4
@G_KEY_FILE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BiosPath\00", align 1
@yui = common dso_local global i32 0, align 4
@YUI_IS_INIT = common dso_local global i32 0, align 4
@yinit = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@biospath = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"CDROMDrive\00", align 1
@cdpath = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"CDROMCore\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Region\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"CartPath\00", align 1
@cartpath = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"CartType\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"BackupRamPath\00", align 1
@buppath = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"MpegRomPath\00", align 1
@mpegpath = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"SH2Int\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"M68kInt\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"VideoCore\00", align 1
@VIDCore = common dso_local global %struct.TYPE_11__* null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"OSDCore\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"SoundCore\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"PerCore\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"AudioSync\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"ClockSync\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"FixedBaseTime\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"UseThreads\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"PerType\00", align 1
@PORTDATA1 = common dso_local global i32 0, align 4
@padbits = common dso_local global i32 0, align 4
@PerMouseNames = common dso_local global i8** null, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"Mouse.%s.1\00", align 1
@PERCore = common dso_local global %struct.TYPE_12__* null, align 8
@PerPadNames = common dso_local global i8** null, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"Pad.%s.1\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Fullscreen\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"VideoFormat\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Frameskip\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Bilinear\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @yui_settings_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yui_settings_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [100 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca [100 x i8], align 16
  %14 = alloca i32, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @keyfile, align 4
  %17 = load i32, i32* @inifile, align 4
  %18 = load i32, i32* @G_KEY_FILE_NONE, align 4
  %19 = call i32 @g_key_file_load_from_file(i32 %16, i32 %17, i32 %18, i32 0)
  %20 = load i32, i32* @keyfile, align 4
  %21 = call i8* @g_key_file_get_value(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %0
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32* null, i32** %4, align 8
  br label %30

30:                                               ; preds = %29, %25, %0
  %31 = load i32, i32* @yui, align 4
  %32 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @YUI_IS_INIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 17), align 8
  %41 = call i64 @safe_strcmp(i32* %39, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %38, %30
  %46 = load i32*, i32** %4, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i8*, i8** @biospath, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @g_strlcpy(i8* %49, i32* %50, i32 256)
  %52 = load i8*, i8** @biospath, align 8
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 17), align 8
  br label %55

54:                                               ; preds = %45
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 17), align 8
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i32, i32* @keyfile, align 4
  %57 = call i8* @g_key_file_get_value(i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %4, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32* null, i32** %4, align 8
  br label %66

66:                                               ; preds = %65, %61, %55
  %67 = load i32, i32* @yui, align 4
  %68 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @YUI_IS_INIT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 16), align 8
  %77 = call i64 @safe_strcmp(i32* %75, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 0), align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @Cs2ChangeCDCore(i32 %80, i32* %81)
  br label %83

83:                                               ; preds = %79, %74, %66
  %84 = load i32*, i32** %4, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i8*, i8** @cdpath, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @g_strlcpy(i8* %87, i32* %88, i32 256)
  br label %90

90:                                               ; preds = %86, %83
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 0), align 8
  store i32 %91, i32* %2, align 4
  %92 = load i32, i32* @keyfile, align 4
  %93 = call i32 @g_key_file_get_integer(i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 0), align 8
  %94 = load i32, i32* @yui, align 4
  %95 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @YUI_IS_INIT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %90
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 0), align 8
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 0), align 8
  %107 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 16), align 8
  %108 = call i32 @Cs2ChangeCDCore(i32 %106, i32* %107)
  br label %109

109:                                              ; preds = %105, %101, %90
  %110 = load i32, i32* @keyfile, align 4
  %111 = call i8* @g_key_file_get_value(i32 %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i8* %111, i8** %6, align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  store i32 %112, i32* %2, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115, %109
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  br label %134

120:                                              ; preds = %115
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  switch i32 %124, label %133 [
    i32 74, label %125
    i32 84, label %126
    i32 85, label %127
    i32 66, label %128
    i32 75, label %129
    i32 65, label %130
    i32 69, label %131
    i32 76, label %132
  ]

125:                                              ; preds = %120
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  br label %133

126:                                              ; preds = %120
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  br label %133

127:                                              ; preds = %120
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  br label %133

128:                                              ; preds = %120
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  br label %133

129:                                              ; preds = %120
  store i32 6, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  br label %133

130:                                              ; preds = %120
  store i32 10, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  br label %133

131:                                              ; preds = %120
  store i32 12, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  br label %133

132:                                              ; preds = %120
  store i32 13, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  br label %133

133:                                              ; preds = %120, %132, %131, %130, %129, %128, %127, %126, %125
  br label %134

134:                                              ; preds = %133, %119
  %135 = load i32, i32* @yui, align 4
  %136 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @YUI_IS_INIT, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load i32, i32* %2, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 1), align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @TRUE, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %146, %142, %134
  %149 = load i32, i32* @keyfile, align 4
  %150 = call i8* @g_key_file_get_value(i32 %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %151 = bitcast i8* %150 to i32*
  store i32* %151, i32** %4, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  store i32* null, i32** %4, align 8
  br label %159

159:                                              ; preds = %158, %154, %148
  %160 = load i32, i32* @yui, align 4
  %161 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @YUI_IS_INIT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %159
  %168 = load i32*, i32** %4, align 8
  %169 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 15), align 8
  %170 = call i64 @safe_strcmp(i32* %168, i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* @TRUE, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %172, %167, %159
  %175 = load i32*, i32** %4, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load i8*, i8** @cartpath, align 8
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @g_strlcpy(i8* %178, i32* %179, i32 256)
  %181 = load i8*, i8** @cartpath, align 8
  %182 = bitcast i8* %181 to i32*
  store i32* %182, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 15), align 8
  br label %184

183:                                              ; preds = %174
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 15), align 8
  br label %184

184:                                              ; preds = %183, %177
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 2), align 8
  store i32 %185, i32* %2, align 4
  %186 = load i32, i32* @keyfile, align 4
  %187 = call i32 @g_key_file_get_integer(i32 %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* null)
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 2), align 8
  %188 = load i32, i32* @yui, align 4
  %189 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %188)
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @YUI_IS_INIT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %184
  %196 = load i32, i32* %2, align 4
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 2), align 8
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i32, i32* @TRUE, align 4
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %199, %195, %184
  %202 = load i32, i32* @keyfile, align 4
  %203 = call i8* @g_key_file_get_value(i32 %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %204 = bitcast i8* %203 to i32*
  store i32* %204, i32** %4, align 8
  %205 = load i32*, i32** %4, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %201
  %208 = load i32*, i32** %4, align 8
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  store i32* null, i32** %4, align 8
  br label %212

212:                                              ; preds = %211, %207, %201
  %213 = load i32, i32* @yui, align 4
  %214 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %213)
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @YUI_IS_INIT, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %212
  %221 = load i32*, i32** %4, align 8
  %222 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 14), align 8
  %223 = call i64 @safe_strcmp(i32* %221, i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @TRUE, align 4
  store i32 %226, i32* %5, align 4
  br label %227

227:                                              ; preds = %225, %220, %212
  %228 = load i32*, i32** %4, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load i8*, i8** @buppath, align 8
  %232 = load i32*, i32** %4, align 8
  %233 = call i32 @g_strlcpy(i8* %231, i32* %232, i32 256)
  %234 = load i8*, i8** @buppath, align 8
  %235 = bitcast i8* %234 to i32*
  store i32* %235, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 14), align 8
  br label %237

236:                                              ; preds = %227
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 14), align 8
  br label %237

237:                                              ; preds = %236, %230
  %238 = load i32, i32* @keyfile, align 4
  %239 = call i8* @g_key_file_get_value(i32 %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %240 = bitcast i8* %239 to i32*
  store i32* %240, i32** %4, align 8
  %241 = load i32*, i32** %4, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %248

243:                                              ; preds = %237
  %244 = load i32*, i32** %4, align 8
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  store i32* null, i32** %4, align 8
  br label %248

248:                                              ; preds = %247, %243, %237
  %249 = load i32, i32* @yui, align 4
  %250 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %249)
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @YUI_IS_INIT, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %248
  %257 = load i32*, i32** %4, align 8
  %258 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 13), align 8
  %259 = call i64 @safe_strcmp(i32* %257, i32* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = load i32, i32* @TRUE, align 4
  store i32 %262, i32* %5, align 4
  br label %263

263:                                              ; preds = %261, %256, %248
  %264 = load i32*, i32** %4, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load i8*, i8** @mpegpath, align 8
  %268 = load i32*, i32** %4, align 8
  %269 = call i32 @g_strlcpy(i8* %267, i32* %268, i32 256)
  %270 = load i8*, i8** @mpegpath, align 8
  %271 = bitcast i8* %270 to i32*
  store i32* %271, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 13), align 8
  br label %273

272:                                              ; preds = %263
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 13), align 8
  br label %273

273:                                              ; preds = %272, %266
  %274 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 3), align 4
  store i32 %274, i32* %2, align 4
  %275 = load i32, i32* @keyfile, align 4
  %276 = call i32 @g_key_file_get_integer(i32 %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* null)
  store i32 %276, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 3), align 4
  %277 = load i32, i32* @yui, align 4
  %278 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %277)
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @YUI_IS_INIT, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %273
  %285 = load i32, i32* %2, align 4
  %286 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 3), align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %284
  %289 = load i32, i32* @TRUE, align 4
  store i32 %289, i32* %5, align 4
  br label %290

290:                                              ; preds = %288, %284, %273
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 4), align 8
  store i32 %291, i32* %2, align 4
  %292 = load i32, i32* @keyfile, align 4
  %293 = call i32 @g_key_file_get_integer(i32 %292, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32* null)
  store i32 %293, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 4), align 8
  %294 = load i32, i32* @yui, align 4
  %295 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %294)
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @YUI_IS_INIT, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %290
  %302 = load i32, i32* %2, align 4
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 4), align 8
  %304 = icmp ne i32 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %301
  %306 = load i32, i32* @TRUE, align 4
  store i32 %306, i32* %5, align 4
  br label %307

307:                                              ; preds = %305, %301, %290
  %308 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 5), align 4
  store i32 %308, i32* %2, align 4
  %309 = load i32, i32* @keyfile, align 4
  %310 = call i32 @g_key_file_get_integer(i32 %309, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* null)
  store i32 %310, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 5), align 4
  %311 = load i32, i32* @yui, align 4
  %312 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %311)
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @YUI_IS_INIT, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %346

318:                                              ; preds = %307
  %319 = load i32, i32* %2, align 4
  %320 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 5), align 4
  %321 = icmp ne i32 %319, %320
  br i1 %321, label %322, label %346

322:                                              ; preds = %318
  %323 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 5), align 4
  %324 = call i32 @VideoChangeCore(i32 %323)
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** @VIDCore, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 0
  %327 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %326, align 8
  %328 = load i32, i32* @yui, align 4
  %329 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %328)
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call %struct.TYPE_13__* @GTK_WIDGET(i32 %331)
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @yui, align 4
  %337 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %336)
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = call %struct.TYPE_13__* @GTK_WIDGET(i32 %339)
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @FALSE, align 4
  %345 = call i32 %327(i32 %335, i32 %343, i32 %344)
  br label %346

346:                                              ; preds = %322, %318, %307
  %347 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 6), align 8
  store i32 %347, i32* %2, align 4
  %348 = load i32, i32* @keyfile, align 4
  %349 = call i32 @g_key_file_get_integer(i32 %348, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32* null)
  store i32 %349, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 6), align 8
  %350 = load i32, i32* @yui, align 4
  %351 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %350)
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @YUI_IS_INIT, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %364

357:                                              ; preds = %346
  %358 = load i32, i32* %2, align 4
  %359 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 6), align 8
  %360 = icmp ne i32 %358, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %357
  %362 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 6), align 8
  %363 = call i32 @OSDChangeCore(i32 %362)
  br label %364

364:                                              ; preds = %361, %357, %346
  %365 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 7), align 4
  store i32 %365, i32* %2, align 4
  %366 = load i32, i32* @keyfile, align 4
  %367 = call i32 @g_key_file_get_integer(i32 %366, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* null)
  store i32 %367, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 7), align 4
  %368 = load i32, i32* @yui, align 4
  %369 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %368)
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @YUI_IS_INIT, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %364
  %376 = load i32, i32* %2, align 4
  %377 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 7), align 4
  %378 = icmp ne i32 %376, %377
  br i1 %378, label %379, label %382

379:                                              ; preds = %375
  %380 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 7), align 4
  %381 = call i32 @ScspChangeSoundCore(i32 %380)
  br label %382

382:                                              ; preds = %379, %375, %364
  %383 = load i32, i32* @keyfile, align 4
  %384 = call i32 @g_key_file_get_integer(i32 %383, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32* null)
  %385 = call i32 @ScspSetVolume(i32 %384)
  %386 = load i32, i32* @keyfile, align 4
  %387 = call i32 @g_key_file_get_integer(i32 %386, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32* null)
  store i32 %387, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 8), align 8
  %388 = load i32, i32* @keyfile, align 4
  %389 = call i8* @g_key_file_get_boolean(i32 %388, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %390 = ptrtoint i8* %389 to i32
  store i32 %390, i32* %2, align 4
  %391 = load i32, i32* %2, align 4
  %392 = call i32 @ScspSetFrameAccurate(i32 %391)
  %393 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 9), align 4
  store i32 %393, i32* %2, align 4
  %394 = load i32, i32* @keyfile, align 4
  %395 = call i8* @g_key_file_get_boolean(i32 %394, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %396 = ptrtoint i8* %395 to i32
  store i32 %396, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 9), align 4
  %397 = load i32, i32* @yui, align 4
  %398 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %397)
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @YUI_IS_INIT, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %382
  %405 = load i32, i32* %2, align 4
  %406 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 9), align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %408, label %410

408:                                              ; preds = %404
  %409 = load i32, i32* @TRUE, align 4
  store i32 %409, i32* %5, align 4
  br label %410

410:                                              ; preds = %408, %404, %382
  %411 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 10), align 8
  store i64 %411, i64* %3, align 8
  %412 = load i32, i32* @keyfile, align 4
  %413 = call i8* @g_key_file_get_boolean(i32 %412, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 0)
  %414 = ptrtoint i8* %413 to i32
  store i32 %414, i32* %2, align 4
  %415 = load i32, i32* %2, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %454

417:                                              ; preds = %410
  %418 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 9), align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %454

420:                                              ; preds = %417
  store i32 883656000, i32* %7, align 4
  %421 = call i32 @localtime_r(i32* %7, %struct.tm* %8)
  %422 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = mul nsw i32 %423, 3600
  %425 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = mul nsw i32 %426, 60
  %428 = add nsw i32 %424, %427
  %429 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %430 = load i32, i32* %429, align 4
  %431 = add nsw i32 %428, %430
  %432 = sext i32 %431 to i64
  store i64 %432, i64* %9, align 8
  %433 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = icmp eq i32 %434, 2
  br i1 %435, label %436, label %439

436:                                              ; preds = %420
  %437 = load i64, i64* %9, align 8
  %438 = add nsw i64 %437, 86400
  store i64 %438, i64* %9, align 8
  br label %447

439:                                              ; preds = %420
  %440 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = icmp eq i32 %441, 31
  br i1 %442, label %443, label %446

443:                                              ; preds = %439
  %444 = load i64, i64* %9, align 8
  %445 = sub nsw i64 %444, 86400
  store i64 %445, i64* %9, align 8
  br label %446

446:                                              ; preds = %443, %439
  br label %447

447:                                              ; preds = %446, %436
  store i64 43200, i64* %10, align 8
  %448 = load i32, i32* %7, align 4
  %449 = sext i32 %448 to i64
  %450 = load i64, i64* %10, align 8
  %451 = load i64, i64* %9, align 8
  %452 = sub nsw i64 %450, %451
  %453 = add nsw i64 %449, %452
  store i64 %453, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 10), align 8
  br label %455

454:                                              ; preds = %417, %410
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 10), align 8
  br label %455

455:                                              ; preds = %454, %447
  %456 = load i32, i32* @yui, align 4
  %457 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %456)
  %458 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @YUI_IS_INIT, align 4
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %469

463:                                              ; preds = %455
  %464 = load i64, i64* %3, align 8
  %465 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 10), align 8
  %466 = icmp ne i64 %464, %465
  br i1 %466, label %467, label %469

467:                                              ; preds = %463
  %468 = load i32, i32* @TRUE, align 4
  store i32 %468, i32* %5, align 4
  br label %469

469:                                              ; preds = %467, %463, %455
  %470 = load i32, i32* @keyfile, align 4
  %471 = call i8* @g_key_file_get_boolean(i32 %470, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 0)
  %472 = ptrtoint i8* %471 to i32
  store i32 %472, i32* %2, align 4
  %473 = load i32, i32* @yui, align 4
  %474 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %473)
  %475 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* @YUI_IS_INIT, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %486

480:                                              ; preds = %469
  %481 = load i32, i32* %2, align 4
  %482 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 11), align 8
  %483 = icmp ne i32 %481, %482
  br i1 %483, label %484, label %486

484:                                              ; preds = %480
  %485 = load i32, i32* @TRUE, align 4
  store i32 %485, i32* %5, align 4
  br label %486

486:                                              ; preds = %484, %480, %469
  %487 = load i32, i32* %2, align 4
  store i32 %487, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 11), align 8
  %488 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 8), align 8
  %489 = call i32 @PerInit(i32 %488)
  %490 = call i32 (...) @PerPortReset()
  %491 = load i32, i32* @keyfile, align 4
  %492 = call i32 @g_key_file_get_integer(i32 %491, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32* null)
  switch i32 %492, label %525 [
    i32 129, label %493
    i32 128, label %524
  ]

493:                                              ; preds = %486
  %494 = call i32 @PerMouseAdd(i32* @PORTDATA1)
  store i32 %494, i32* @padbits, align 4
  store i32 0, i32* %1, align 4
  br label %495

495:                                              ; preds = %502, %493
  %496 = load i8**, i8*** @PerMouseNames, align 8
  %497 = load i32, i32* %1, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8*, i8** %496, i64 %498
  %500 = load i8*, i8** %499, align 8
  %501 = icmp ne i8* %500, null
  br i1 %501, label %502, label %523

502:                                              ; preds = %495
  %503 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %504 = load i8**, i8*** @PerMouseNames, align 8
  %505 = load i32, i32* %1, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i8*, i8** %504, i64 %506
  %508 = load i8*, i8** %507, align 8
  %509 = call i32 @sprintf(i8* %503, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* %508)
  %510 = load i32, i32* @keyfile, align 4
  %511 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PERCore, align 8
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 0
  %513 = load i8*, i8** %512, align 8
  %514 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %515 = call i32 @g_key_file_get_integer(i32 %510, i8* %513, i8* %514, i32* null)
  store i32 %515, i32* %12, align 4
  %516 = load i32, i32* %12, align 4
  %517 = load i32, i32* %1, align 4
  %518 = add nsw i32 %517, 13
  %519 = load i32, i32* @padbits, align 4
  %520 = call i32 @PerSetKey(i32 %516, i32 %518, i32 %519)
  %521 = load i32, i32* %1, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %1, align 4
  br label %495

523:                                              ; preds = %495
  br label %555

524:                                              ; preds = %486
  br label %525

525:                                              ; preds = %486, %524
  %526 = call i32 @PerPadAdd(i32* @PORTDATA1)
  store i32 %526, i32* @padbits, align 4
  store i32 0, i32* %1, align 4
  br label %527

527:                                              ; preds = %534, %525
  %528 = load i8**, i8*** @PerPadNames, align 8
  %529 = load i32, i32* %1, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i8*, i8** %528, i64 %530
  %532 = load i8*, i8** %531, align 8
  %533 = icmp ne i8* %532, null
  br i1 %533, label %534, label %554

534:                                              ; preds = %527
  %535 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %536 = load i8**, i8*** @PerPadNames, align 8
  %537 = load i32, i32* %1, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8*, i8** %536, i64 %538
  %540 = load i8*, i8** %539, align 8
  %541 = call i32 @sprintf(i8* %535, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* %540)
  %542 = load i32, i32* @keyfile, align 4
  %543 = load %struct.TYPE_12__*, %struct.TYPE_12__** @PERCore, align 8
  %544 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %543, i32 0, i32 0
  %545 = load i8*, i8** %544, align 8
  %546 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %547 = call i32 @g_key_file_get_integer(i32 %542, i8* %545, i8* %546, i32* null)
  store i32 %547, i32* %14, align 4
  %548 = load i32, i32* %14, align 4
  %549 = load i32, i32* %1, align 4
  %550 = load i32, i32* @padbits, align 4
  %551 = call i32 @PerSetKey(i32 %548, i32 %549, i32 %550)
  %552 = load i32, i32* %1, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %1, align 4
  br label %527

554:                                              ; preds = %527
  br label %555

555:                                              ; preds = %554, %523
  %556 = load i32, i32* @keyfile, align 4
  %557 = call i32 @g_key_file_get_integer(i32 %556, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32* null)
  %558 = load i32, i32* @keyfile, align 4
  %559 = call i32 @g_key_file_get_integer(i32 %558, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32* null)
  %560 = load i32, i32* @keyfile, align 4
  %561 = call i32 @g_key_file_get_integer(i32 %560, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32* null)
  %562 = call i32 @yui_resize(i32 %557, i32 %559, i32 %561)
  %563 = load i32, i32* @keyfile, align 4
  %564 = call i32 @g_key_file_get_integer(i32 %563, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32* null)
  store i32 %564, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @yinit, i32 0, i32 12), align 4
  %565 = load i32, i32* @yui, align 4
  %566 = call %struct.TYPE_9__* @YUI_WINDOW(i32 %565)
  %567 = load i32, i32* @keyfile, align 4
  %568 = call i32 @g_key_file_get_integer(i32 %567, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32* null)
  %569 = call i32 @yui_window_set_frameskip(%struct.TYPE_9__* %566, i32 %568)
  %570 = load i32, i32* @keyfile, align 4
  %571 = call i32 @g_key_file_get_integer(i32 %570, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32* null)
  %572 = call i32 @VIDSoftSetBilinear(i32 %571)
  %573 = load i32, i32* %5, align 4
  ret i32 %573
}

declare dso_local i32 @g_key_file_load_from_file(i32, i32, i32, i32) #1

declare dso_local i8* @g_key_file_get_value(i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @YUI_WINDOW(i32) #1

declare dso_local i64 @safe_strcmp(i32*, i32*) #1

declare dso_local i32 @g_strlcpy(i8*, i32*, i32) #1

declare dso_local i32 @Cs2ChangeCDCore(i32, i32*) #1

declare dso_local i32 @g_key_file_get_integer(i32, i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @VideoChangeCore(i32) #1

declare dso_local %struct.TYPE_13__* @GTK_WIDGET(i32) #1

declare dso_local i32 @OSDChangeCore(i32) #1

declare dso_local i32 @ScspChangeSoundCore(i32) #1

declare dso_local i32 @ScspSetVolume(i32) #1

declare dso_local i8* @g_key_file_get_boolean(i32, i8*, i8*, i32) #1

declare dso_local i32 @ScspSetFrameAccurate(i32) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @PerInit(i32) #1

declare dso_local i32 @PerPortReset(...) #1

declare dso_local i32 @PerMouseAdd(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @PerSetKey(i32, i32, i32) #1

declare dso_local i32 @PerPadAdd(i32*) #1

declare dso_local i32 @yui_resize(i32, i32, i32) #1

declare dso_local i32 @yui_window_set_frameskip(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @VIDSoftSetBilinear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
