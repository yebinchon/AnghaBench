; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_snd.c_SNDDMA_InitDS.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_snd.c_SNDDMA_InitDS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_28__*, i32, i32)*, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__**, i32*)*, i32 (%struct.TYPE_28__*, i32*)* }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_26__*, i64, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 (%struct.TYPE_27__*, i32, i32, i32)*, i64 (%struct.TYPE_27__*, %struct.TYPE_26__*)* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, %struct.TYPE_26__* }

@.str = private unnamed_addr constant [26 x i8] c"Initializing DirectSound\0A\00", align 1
@CLSID_DirectSound8 = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IDirectSound8 = common dso_local global i32 0, align 4
@pDS = common dso_local global %struct.TYPE_28__* null, align 8
@CLSID_DirectSound = common dso_local global i32 0, align 4
@IID_IDirectSound = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"...setting DSSCL_PRIORITY coop level: \00", align 1
@DS_OK = common dso_local global i64 0, align 8
@g_wv = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@DSSCL_PRIORITY = common dso_local global i32 0, align 4
@dma = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@DSBCAPS_LOCHARDWARE = common dso_local global i32 0, align 4
@DSBCAPS_GETCURRENTPOSITION2 = common dso_local global i32 0, align 4
@SECONDARY_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"...creating secondary buffer: \00", align 1
@pDSBuf = common dso_local global %struct.TYPE_27__* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"locked hardware.  ok\0A\00", align 1
@DSBCAPS_LOCSOFTWARE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"forced to software.  ok\0A\00", align 1
@DSBPLAY_LOOPING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"*** Looped sound play failed ***\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"*** GetCaps failed ***\0A\00", align 1
@gSndBufSize = common dso_local global i32 0, align 4
@sample16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SNDDMA_InitDS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__, align 8
  %4 = alloca %struct.TYPE_26__, align 8
  %5 = alloca %struct.TYPE_26__, align 8
  %6 = alloca i32, align 4
  %7 = call i32 @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  %8 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %9 = call i32 @CoCreateInstance(i32* @CLSID_DirectSound8, i32* null, i32 %8, i32* @IID_IDirectSound8, i8** bitcast (%struct.TYPE_28__** @pDS to i8**))
  store i32 %9, i32* %2, align 4
  %10 = call i64 @FAILED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %0
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %14 = call i32 @CoCreateInstance(i32* @CLSID_DirectSound, i32* null, i32 %13, i32* @IID_IDirectSound, i8** bitcast (%struct.TYPE_28__** @pDS to i8**))
  store i32 %14, i32* %2, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = call i32 @Com_Printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (...) @SNDDMA_Shutdown()
  %20 = load i32, i32* @qfalse, align 4
  store i32 %20, i32* %1, align 4
  br label %184

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %0
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** @pDS, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  %27 = load i32 (%struct.TYPE_28__*, i32*)*, i32 (%struct.TYPE_28__*, i32*)** %26, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** @pDS, align 8
  %29 = call i32 %27(%struct.TYPE_28__* %28, i32* null)
  store i32 %29, i32* %2, align 4
  %30 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i64, i64* @DS_OK, align 8
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** @pDS, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i64 (%struct.TYPE_28__*, i32, i32)*, i64 (%struct.TYPE_28__*, i32, i32)** %36, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** @pDS, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @g_wv, i32 0, i32 0), align 4
  %40 = load i32, i32* @DSSCL_PRIORITY, align 4
  %41 = call i64 %37(%struct.TYPE_28__* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %32, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %22
  %44 = call i32 @Com_Printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 (...) @SNDDMA_Shutdown()
  %46 = load i32, i32* @qfalse, align 4
  store i32 %46, i32* %1, align 4
  br label %184

47:                                               ; preds = %22
  %48 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 0), align 8
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 1), align 4
  store i32 22050, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 2), align 8
  %49 = call i32 @memset(%struct.TYPE_26__* %5, i32 0, i32 56)
  %50 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 10
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 1), align 4
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 2), align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %59, %61
  %63 = sdiv i32 %62, 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %67, %69
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 4
  store i32 %70, i32* %71, align 8
  %72 = call i32 @memset(%struct.TYPE_26__* %3, i32 0, i32 56)
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 5
  store i32 56, i32* %73, align 4
  %74 = load i32, i32* @DSBCAPS_LOCHARDWARE, align 4
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 7
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %47
  %79 = load i32, i32* @DSBCAPS_GETCURRENTPOSITION2, align 4
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %47
  %84 = load i32, i32* @SECONDARY_BUFFER_SIZE, align 4
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 6
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 8
  store %struct.TYPE_26__* %5, %struct.TYPE_26__** %86, align 8
  %87 = call i32 @memset(%struct.TYPE_26__* %4, i32 0, i32 56)
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 5
  store i32 56, i32* %88, align 4
  %89 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i64, i64* @DS_OK, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** @pDS, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load i64 (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__**, i32*)*, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__**, i32*)** %94, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** @pDS, align 8
  %97 = call i64 %95(%struct.TYPE_28__* %96, %struct.TYPE_26__* %3, %struct.TYPE_27__** @pDSBuf, i32* null)
  %98 = icmp eq i64 %90, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = call i32 @Com_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %127

101:                                              ; preds = %83
  %102 = load i32, i32* @DSBCAPS_LOCSOFTWARE, align 4
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 7
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* @DSBCAPS_GETCURRENTPOSITION2, align 4
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i64, i64* @DS_OK, align 8
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** @pDS, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = load i64 (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__**, i32*)*, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_27__**, i32*)** %116, align 8
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** @pDS, align 8
  %119 = call i64 %117(%struct.TYPE_28__* %118, %struct.TYPE_26__* %3, %struct.TYPE_27__** @pDSBuf, i32* null)
  %120 = icmp ne i64 %112, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = call i32 @Com_Printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %123 = call i32 (...) @SNDDMA_Shutdown()
  %124 = load i32, i32* @qfalse, align 4
  store i32 %124, i32* %1, align 4
  br label %184

125:                                              ; preds = %111
  %126 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %99
  %128 = load i64, i64* @DS_OK, align 8
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** @pDSBuf, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = load i64 (%struct.TYPE_27__*, i32, i32, i32)*, i64 (%struct.TYPE_27__*, i32, i32, i32)** %132, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** @pDSBuf, align 8
  %135 = load i32, i32* @DSBPLAY_LOOPING, align 4
  %136 = call i64 %133(%struct.TYPE_27__* %134, i32 0, i32 0, i32 %135)
  %137 = icmp ne i64 %128, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %127
  %139 = call i32 @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %140 = call i32 (...) @SNDDMA_Shutdown()
  %141 = load i32, i32* @qfalse, align 4
  store i32 %141, i32* %1, align 4
  br label %184

142:                                              ; preds = %127
  %143 = load i64, i64* @DS_OK, align 8
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** @pDSBuf, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 1
  %148 = load i64 (%struct.TYPE_27__*, %struct.TYPE_26__*)*, i64 (%struct.TYPE_27__*, %struct.TYPE_26__*)** %147, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** @pDSBuf, align 8
  %150 = call i64 %148(%struct.TYPE_27__* %149, %struct.TYPE_26__* %4)
  %151 = icmp ne i64 %143, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %142
  %153 = call i32 @Com_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %154 = call i32 (...) @SNDDMA_Shutdown()
  %155 = load i32, i32* @qfalse, align 4
  store i32 %155, i32* %1, align 4
  br label %184

156:                                              ; preds = %142
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* @gSndBufSize, align 4
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 0), align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 1), align 4
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %5, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 2), align 8
  %165 = load i32, i32* @gSndBufSize, align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 1), align 4
  %167 = sdiv i32 %166, 8
  %168 = sdiv i32 %165, %167
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 4), align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 5), align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 1), align 4
  %170 = sdiv i32 %169, 8
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* @sample16, align 4
  %172 = call i32 (...) @SNDDMA_BeginPainting()
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 5), align 8
  %174 = icmp ne %struct.TYPE_26__* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %156
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 5), align 8
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 3), align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @dma, i32 0, i32 1), align 4
  %179 = mul nsw i32 %177, %178
  %180 = sdiv i32 %179, 8
  %181 = call i32 @memset(%struct.TYPE_26__* %176, i32 0, i32 %180)
  br label %182

182:                                              ; preds = %175, %156
  %183 = call i32 (...) @SNDDMA_Submit()
  store i32 1, i32* %1, align 4
  br label %184

184:                                              ; preds = %182, %152, %138, %121, %43, %17
  %185 = load i32, i32* %1, align 4
  ret i32 %185
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @SNDDMA_Shutdown(...) #1

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @SNDDMA_BeginPainting(...) #1

declare dso_local i32 @SNDDMA_Submit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
