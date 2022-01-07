; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_Startup.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_FS_Startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i64* }

@.str = private unnamed_addr constant [24 x i8] c"----- FS_Startup -----\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fs_debug\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@fs_debug = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"fs_copyfiles\00", align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@fs_copyfiles = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"fs_cdpath\00", align 1
@fs_cdpath = common dso_local global %struct.TYPE_10__* null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"fs_basepath\00", align 1
@fs_basepath = common dso_local global %struct.TYPE_11__* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"fs_basegame\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@fs_basegame = common dso_local global %struct.TYPE_12__* null, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"fs_homepath\00", align 1
@fs_homepath = common dso_local global %struct.TYPE_8__* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@fs_gamedirvar = common dso_local global %struct.TYPE_9__* null, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"fs_restrict\00", align 1
@fs_restrict = common dso_local global i8* null, align 8
@BASEGAME = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"baseq3\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"fdir\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"touchFile\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c"----------------------\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%d files in pk3 files\0A\00", align 1
@fs_packFiles = common dso_local global i32 0, align 4
@missingFiles = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @FS_Startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FS_Startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %6 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %6, i8** @fs_debug, align 8
  %7 = load i32, i32* @CVAR_INIT, align 4
  %8 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  store i8* %8, i8** @fs_copyfiles, align 8
  %9 = call i8* (...) @Sys_DefaultCDPath()
  %10 = load i32, i32* @CVAR_INIT, align 4
  %11 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %9, i32 %10)
  %12 = bitcast i8* %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** @fs_cdpath, align 8
  %13 = call i8* (...) @Sys_DefaultInstallPath()
  %14 = load i32, i32* @CVAR_INIT, align 4
  %15 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** @fs_basepath, align 8
  %17 = load i32, i32* @CVAR_INIT, align 4
  %18 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %17)
  %19 = bitcast i8* %18 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** @fs_basegame, align 8
  %20 = call i8* (...) @Sys_DefaultHomePath()
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @CVAR_INIT, align 4
  %35 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %33, i32 %34)
  %36 = bitcast i8* %35 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** @fs_homepath, align 8
  %37 = load i32, i32* @CVAR_INIT, align 4
  %38 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %39)
  %41 = bitcast i8* %40 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** @fs_gamedirvar, align 8
  %42 = load i32, i32* @CVAR_INIT, align 4
  %43 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  store i8* %43, i8** @fs_restrict, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_cdpath, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %32
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_cdpath, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = call i32 @FS_AddGameDirectory(i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %50, %32
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 @FS_AddGameDirectory(i8* %66, i8* %67)
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %69
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_homepath, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @Q_stricmp(i8* %80, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_homepath, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %2, align 8
  %91 = call i32 @FS_AddGameDirectory(i8* %89, i8* %90)
  br label %92

92:                                               ; preds = %86, %77, %69
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_basegame, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %168

100:                                              ; preds = %92
  %101 = load i8*, i8** %2, align 8
  %102 = load i8*, i8** @BASEGAME, align 8
  %103 = call i64 @Q_stricmp(i8* %101, i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %168, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_basegame, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %2, align 8
  %110 = call i64 @Q_stricmp(i8* %108, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %168

112:                                              ; preds = %105
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_cdpath, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_cdpath, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_basegame, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @FS_AddGameDirectory(i8* %122, i8* %125)
  br label %127

127:                                              ; preds = %119, %112
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_basegame, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @FS_AddGameDirectory(i8* %137, i8* %140)
  br label %142

142:                                              ; preds = %134, %127
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_homepath, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %142
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_homepath, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @Q_stricmp(i8* %153, i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %150
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_homepath, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fs_basegame, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @FS_AddGameDirectory(i8* %162, i8* %165)
  br label %167

167:                                              ; preds = %159, %150, %142
  br label %168

168:                                              ; preds = %167, %105, %100, %92
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_gamedirvar, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %244

176:                                              ; preds = %168
  %177 = load i8*, i8** %2, align 8
  %178 = load i8*, i8** @BASEGAME, align 8
  %179 = call i64 @Q_stricmp(i8* %177, i8* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %244, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_gamedirvar, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %2, align 8
  %186 = call i64 @Q_stricmp(i8* %184, i8* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %244

188:                                              ; preds = %181
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_cdpath, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i8, i8* %192, align 1
  %194 = icmp ne i8 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %188
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fs_cdpath, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_gamedirvar, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @FS_AddGameDirectory(i8* %198, i8* %201)
  br label %203

203:                                              ; preds = %195, %188
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 0
  %208 = load i8, i8* %207, align 1
  %209 = icmp ne i8 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %203
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_gamedirvar, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @FS_AddGameDirectory(i8* %213, i8* %216)
  br label %218

218:                                              ; preds = %210, %203
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_homepath, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %243

226:                                              ; preds = %218
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_homepath, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fs_basepath, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i64 @Q_stricmp(i8* %229, i8* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %226
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** @fs_homepath, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_gamedirvar, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @FS_AddGameDirectory(i8* %238, i8* %241)
  br label %243

243:                                              ; preds = %235, %226, %218
  br label %244

244:                                              ; preds = %243, %181, %176, %168
  %245 = call i32 @Com_ReadCDKey(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %246 = load i32, i32* @CVAR_INIT, align 4
  %247 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %248 = or i32 %246, %247
  %249 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %248)
  %250 = bitcast i8* %249 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %250, %struct.TYPE_7__** %4, align 8
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %252 = icmp ne %struct.TYPE_7__* %251, null
  br i1 %252, label %253, label %265

253:                                              ; preds = %244
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %253
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i64*, i64** %262, align 8
  %264 = call i32 @Com_AppendCDKey(i64* %263)
  br label %265

265:                                              ; preds = %260, %253, %244
  %266 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 (...)* @FS_Path_f)
  %267 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 (...)* @FS_Dir_f)
  %268 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 (...)* @FS_NewDir_f)
  %269 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 (...)* @FS_TouchFile_f)
  %270 = call i32 (...) @FS_ReorderPurePaks()
  %271 = call i32 (...) @FS_Path_f()
  %272 = load i32, i32* @qfalse, align 4
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** @fs_gamedirvar, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 8
  %275 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %276 = load i32, i32* @fs_packFiles, align 4
  %277 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %276)
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i8* @Sys_DefaultCDPath(...) #1

declare dso_local i8* @Sys_DefaultInstallPath(...) #1

declare dso_local i8* @Sys_DefaultHomePath(...) #1

declare dso_local i32 @FS_AddGameDirectory(i8*, i8*) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @Com_ReadCDKey(i8*) #1

declare dso_local i32 @Com_AppendCDKey(i64*) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32 (...)*) #1

declare dso_local i32 @FS_Path_f(...) #1

declare dso_local i32 @FS_Dir_f(...) #1

declare dso_local i32 @FS_NewDir_f(...) #1

declare dso_local i32 @FS_TouchFile_f(...) #1

declare dso_local i32 @FS_ReorderPurePaks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
