; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_CIN_PlayCinematic.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_CIN_PlayCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64* }
%struct.TYPE_9__ = type { i64, i64* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_OSPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"video/%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CIN_system = common dso_local global i32 0, align 4
@MAX_VIDEO_HANDLES = common dso_local global i32 0, align 4
@cinTable = common dso_local global %struct.TYPE_8__* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"SCR_PlayCinematic( %s )\0A\00", align 1
@cin = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@currentHandle = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"play(%s), ROQSize<=0\0A\00", align 1
@CIN_loop = common dso_local global i32 0, align 4
@DEFAULT_CIN_HEIGHT = common dso_local global i32 0, align 4
@DEFAULT_CIN_WIDTH = common dso_local global i32 0, align 4
@CIN_hold = common dso_local global i32 0, align 4
@CIN_silent = common dso_local global i32 0, align 4
@CIN_shader = common dso_local global i32 0, align 4
@uivm = common dso_local global i64 0, align 8
@UI_SET_ACTIVE_MENU = common dso_local global i32 0, align 4
@UIMENU_NONE = common dso_local global i32 0, align 4
@cl_inGameVideo = common dso_local global %struct.TYPE_7__* null, align 8
@FMV_PLAY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"trFMV::play(), playing %s\0A\00", align 1
@CA_CINEMATIC = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@s_soundtime = common dso_local global i32 0, align 4
@s_rawend = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"trFMV::play(), invalid RoQ ID\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIN_PlayCinematic(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* @MAX_OSPATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32* @strstr(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %6
  %27 = load i8*, i8** %8, align 8
  %28 = call i32* @strstr(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = trunc i64 %20 to i32
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @Com_sprintf(i8* %22, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %38

34:                                               ; preds = %26, %6
  %35 = trunc i64 %20 to i32
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @Com_sprintf(i8* %22, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @CIN_system, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %38
  store i32 0, i32* %17, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @MAX_VIDEO_HANDLES, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 10
  %54 = load i64*, i64** %53, align 8
  %55 = call i32 @strcmp(i64* %54, i8* %22)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %253

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %44

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %38
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = call i32 @Com_Memset(%struct.TYPE_9__* @cin, i32 0, i32 4)
  %68 = call i64 (...) @CIN_HandleForVideo()
  store i64 %68, i64* @currentHandle, align 8
  %69 = load i64, i64* @currentHandle, align 8
  store i64 %69, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cin, i32 0, i32 0), align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %71 = load i64, i64* @currentHandle, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 10
  %74 = load i64*, i64** %73, align 8
  %75 = call i32 @strcpy(i64* %74, i8* %22)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %77 = load i64, i64* @currentHandle, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %81 = load i64, i64* @currentHandle, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 10
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %86 = load i64, i64* @currentHandle, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 7
  %89 = load i32, i32* @qtrue, align 4
  %90 = call i64 @FS_FOpenFileRead(i64* %84, i32* %88, i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %92 = load i64, i64* @currentHandle, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i64 %90, i64* %94, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %96 = load i64, i64* @currentHandle, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %64
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %105 = load i64, i64* @currentHandle, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 10
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  store i64 0, i64* %109, align 8
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %253

110:                                              ; preds = %64
  %111 = load i64, i64* @currentHandle, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @CIN_SetExtents(i64 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i64, i64* @currentHandle, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @CIN_loop, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @CIN_SetLooping(i64 %117, i32 %122)
  %124 = load i32, i32* @DEFAULT_CIN_HEIGHT, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %126 = load i64, i64* @currentHandle, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 9
  store i32 %124, i32* %128, align 8
  %129 = load i32, i32* @DEFAULT_CIN_WIDTH, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %131 = load i64, i64* @currentHandle, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 8
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @CIN_hold, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %140 = load i64, i64* @currentHandle, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  store i32 %138, i32* %142, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* @CIN_system, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %149 = load i64, i64* @currentHandle, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  store i32 %147, i32* %151, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %153 = load i64, i64* @currentHandle, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  store i32 1, i32* %155, align 8
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @CIN_silent, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %162 = load i64, i64* @currentHandle, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 4
  store i32 %160, i32* %164, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @CIN_shader, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %171 = load i64, i64* @currentHandle, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 5
  store i32 %169, i32* %173, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %175 = load i64, i64* @currentHandle, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %110
  %181 = load i64, i64* @uivm, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load i64, i64* @uivm, align 8
  %185 = load i32, i32* @UI_SET_ACTIVE_MENU, align 4
  %186 = load i32, i32* @UIMENU_NONE, align 4
  %187 = call i32 @VM_Call(i64 %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %183, %180
  br label %197

189:                                              ; preds = %110
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cl_inGameVideo, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %194 = load i64, i64* @currentHandle, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 3
  store i32 %192, i32* %196, align 8
  br label %197

197:                                              ; preds = %189, %188
  %198 = call i32 (...) @initRoQ()
  %199 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cin, i32 0, i32 1), align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %201 = load i64, i64* @currentHandle, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @FS_Read(i64* %199, i32 16, i32 %204)
  %206 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cin, i32 0, i32 1), align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 0
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i16
  %210 = zext i16 %209 to i32
  %211 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cin, i32 0, i32 1), align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 1
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i16
  %215 = zext i16 %214 to i32
  %216 = mul nsw i32 %215, 256
  %217 = add nsw i32 %210, %216
  %218 = trunc i32 %217 to i16
  store i16 %218, i16* %14, align 2
  %219 = load i16, i16* %14, align 2
  %220 = zext i16 %219 to i32
  %221 = icmp eq i32 %220, 4228
  br i1 %221, label %222, label %250

222:                                              ; preds = %197
  %223 = call i32 (...) @RoQ_init()
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %225 = load i64, i64* @currentHandle, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @Sys_BeginStreamedFile(i32 %228, i32 65536)
  %230 = load i32, i32* @FMV_PLAY, align 4
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %232 = load i64, i64* @currentHandle, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 6
  store i32 %230, i32* %234, align 4
  %235 = load i8*, i8** %8, align 8
  %236 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %235)
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cinTable, align 8
  %238 = load i64, i64* @currentHandle, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %222
  %244 = load i32, i32* @CA_CINEMATIC, align 4
  store i32 %244, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cls, i32 0, i32 0), align 4
  br label %245

245:                                              ; preds = %243, %222
  %246 = call i32 (...) @Con_Close()
  %247 = load i32, i32* @s_soundtime, align 4
  store i32 %247, i32* @s_rawend, align 4
  %248 = load i64, i64* @currentHandle, align 8
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %253

250:                                              ; preds = %197
  %251 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %252 = call i32 (...) @RoQShutdown()
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %253

253:                                              ; preds = %250, %245, %101, %57
  %254 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load i32, i32* %7, align 4
  ret i32 %255
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @strcmp(i64*, i8*) #2

declare dso_local i32 @Com_DPrintf(i8*, ...) #2

declare dso_local i32 @Com_Memset(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i64 @CIN_HandleForVideo(...) #2

declare dso_local i32 @strcpy(i64*, i8*) #2

declare dso_local i64 @FS_FOpenFileRead(i64*, i32*, i32) #2

declare dso_local i32 @CIN_SetExtents(i64, i32, i32, i32, i32) #2

declare dso_local i32 @CIN_SetLooping(i64, i32) #2

declare dso_local i32 @VM_Call(i64, i32, i32) #2

declare dso_local i32 @initRoQ(...) #2

declare dso_local i32 @FS_Read(i64*, i32, i32) #2

declare dso_local i32 @RoQ_init(...) #2

declare dso_local i32 @Sys_BeginStreamedFile(i32, i32) #2

declare dso_local i32 @Con_Close(...) #2

declare dso_local i32 @RoQShutdown(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
