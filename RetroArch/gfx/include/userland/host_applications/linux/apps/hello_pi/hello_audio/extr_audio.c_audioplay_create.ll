; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_audio/extr_audio.c_audioplay_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_audio/extr_audio.c_audioplay_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32*, i32, i32*, i32** }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }

@input_buffer_callback = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"audio_render\00", align 1
@ILCLIENT_ENABLE_INPUT_BUFFERS = common dso_local global i32 0, align 4
@ILCLIENT_DISABLE_ALL_PORTS = common dso_local global i32 0, align 4
@OMX_VERSION = common dso_local global i8* null, align 8
@OMX_IndexParamPortDefinition = common dso_local global i32 0, align 4
@OMX_NumericalDataSigned = common dso_local global i32 0, align 4
@OMX_EndianLittle = common dso_local global i32 0, align 4
@OMX_TRUE = common dso_local global i32 0, align 4
@OMX_AUDIO_PCMModeLinear = common dso_local global i32 0, align 4
@OMX_AUDIO_ChannelCF = common dso_local global i8* null, align 8
@OMX_AUDIO_ChannelRF = common dso_local global i8* null, align 8
@OMX_AUDIO_ChannelLF = common dso_local global i8* null, align 8
@OMX_AUDIO_ChannelRS = common dso_local global i8* null, align 8
@OMX_AUDIO_ChannelLS = common dso_local global i8* null, align 8
@OMX_AUDIO_ChannelRR = common dso_local global i8* null, align 8
@OMX_AUDIO_ChannelLR = common dso_local global i8* null, align 8
@OMX_AUDIO_ChannelLFE = common dso_local global i8* null, align 8
@OMX_IndexParamAudioPcm = common dso_local global i32 0, align 4
@OMX_StateIdle = common dso_local global i32 0, align 4
@OMX_StateLoaded = common dso_local global i32 0, align 4
@OMX_StateExecuting = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @audioplay_create(%struct.TYPE_14__** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_13__, align 8
  %20 = alloca %struct.TYPE_13__, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @OUT_CHANNELS(i32 %23)
  %25 = mul nsw i32 %22, %24
  %26 = ashr i32 %25, 3
  store i32 %26, i32* %14, align 4
  store i64 -1, i64* %15, align 8
  %27 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp sge i32 %28, 8000
  br i1 %29, label %30, label %283

30:                                               ; preds = %6
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 192000
  br i1 %32, label %33, label %283

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 1
  br i1 %35, label %36, label %283

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp sle i32 %37, 8
  br i1 %38, label %39, label %283

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %283

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %283

48:                                               ; preds = %45
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %283

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 15
  %55 = and i32 %54, -16
  store i32 %55, i32* %16, align 4
  %56 = call %struct.TYPE_14__* @calloc(i32 1, i32 40)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %17, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %58 = icmp ne %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %282

59:                                               ; preds = %52
  store i64 0, i64* %15, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %61 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = call i64 @sem_init(i32* %63, i32 0, i32 1)
  store i64 %64, i64* %21, align 8
  %65 = load i64, i64* %21, align 8
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = call i32* (...) @ilclient_init()
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @input_buffer_callback, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %89 = call i32 @ilclient_set_empty_buffer_done_callback(i32* %86, i32 %87, %struct.TYPE_14__* %88)
  %90 = call i64 (...) @OMX_Init()
  store i64 %90, i64* %18, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* @OMX_ErrorNone, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i32, i32* @ILCLIENT_ENABLE_INPUT_BUFFERS, align 4
  %102 = load i32, i32* @ILCLIENT_DISABLE_ALL_PORTS, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @ilclient_create_component(i32* %98, i32** %100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 5
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  store i32* %113, i32** %117, align 8
  %118 = call i32 @memset(%struct.TYPE_13__* %19, i32 0, i32 64)
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 64, i32* %119, align 8
  %120 = load i8*, i8** @OMX_VERSION, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 12
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32 100, i32* %123, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @ILC_GET_HANDLE(i32* %126)
  %128 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %129 = call i64 @OMX_GetParameter(i32 %127, i32 %128, %struct.TYPE_13__* %19)
  store i64 %129, i64* %18, align 8
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* @OMX_ErrorNone, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load i32, i32* %16, align 4
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  store i32 %135, i32* %136, align 8
  %137 = load i32, i32* %12, align 4
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  store i32 %137, i32* %138, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @ILC_GET_HANDLE(i32* %141)
  %143 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %144 = call i64 @OMX_SetParameter(i32 %142, i32 %143, %struct.TYPE_13__* %19)
  store i64 %144, i64* %18, align 8
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* @OMX_ErrorNone, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = call i32 @memset(%struct.TYPE_13__* %20, i32 0, i32 64)
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  store i32 64, i32* %151, align 8
  %152 = load i8*, i8** @OMX_VERSION, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 12
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  store i32 100, i32* %155, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @OUT_CHANNELS(i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 4
  store i32 %157, i32* %158, align 8
  %159 = load i32, i32* @OMX_NumericalDataSigned, align 4
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 11
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* @OMX_EndianLittle, align 4
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 10
  store i32 %161, i32* %162, align 8
  %163 = load i32, i32* %9, align 4
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 5
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* @OMX_TRUE, align 4
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 9
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %11, align 4
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 6
  store i32 %167, i32* %168, align 8
  %169 = load i32, i32* @OMX_AUDIO_PCMModeLinear, align 4
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 8
  store i32 %169, i32* %170, align 8
  %171 = load i32, i32* %10, align 4
  switch i32 %171, label %228 [
    i32 1, label %172
    i32 3, label %177
    i32 8, label %190
    i32 7, label %195
    i32 6, label %200
    i32 5, label %205
    i32 4, label %210
    i32 2, label %219
  ]

172:                                              ; preds = %59
  %173 = load i8*, i8** @OMX_AUDIO_ChannelCF, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %175 = load i8**, i8*** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  store i8* %173, i8** %176, align 8
  br label %228

177:                                              ; preds = %59
  %178 = load i8*, i8** @OMX_AUDIO_ChannelCF, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %180 = load i8**, i8*** %179, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 2
  store i8* %178, i8** %181, align 8
  %182 = load i8*, i8** @OMX_AUDIO_ChannelRF, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %184 = load i8**, i8*** %183, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 1
  store i8* %182, i8** %185, align 8
  %186 = load i8*, i8** @OMX_AUDIO_ChannelLF, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %188 = load i8**, i8*** %187, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 0
  store i8* %186, i8** %189, align 8
  br label %228

190:                                              ; preds = %59
  %191 = load i8*, i8** @OMX_AUDIO_ChannelRS, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %193 = load i8**, i8*** %192, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 7
  store i8* %191, i8** %194, align 8
  br label %195

195:                                              ; preds = %59, %190
  %196 = load i8*, i8** @OMX_AUDIO_ChannelLS, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 6
  store i8* %196, i8** %199, align 8
  br label %200

200:                                              ; preds = %59, %195
  %201 = load i8*, i8** @OMX_AUDIO_ChannelRR, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %203 = load i8**, i8*** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 5
  store i8* %201, i8** %204, align 8
  br label %205

205:                                              ; preds = %59, %200
  %206 = load i8*, i8** @OMX_AUDIO_ChannelLR, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %208 = load i8**, i8*** %207, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 4
  store i8* %206, i8** %209, align 8
  br label %210

210:                                              ; preds = %59, %205
  %211 = load i8*, i8** @OMX_AUDIO_ChannelLFE, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %213 = load i8**, i8*** %212, align 8
  %214 = getelementptr inbounds i8*, i8** %213, i64 3
  store i8* %211, i8** %214, align 8
  %215 = load i8*, i8** @OMX_AUDIO_ChannelCF, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %217 = load i8**, i8*** %216, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 2
  store i8* %215, i8** %218, align 8
  br label %219

219:                                              ; preds = %59, %210
  %220 = load i8*, i8** @OMX_AUDIO_ChannelRF, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %222 = load i8**, i8*** %221, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 1
  store i8* %220, i8** %223, align 8
  %224 = load i8*, i8** @OMX_AUDIO_ChannelLF, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %226 = load i8**, i8*** %225, align 8
  %227 = getelementptr inbounds i8*, i8** %226, i64 0
  store i8* %224, i8** %227, align 8
  br label %228

228:                                              ; preds = %59, %219, %177, %172
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @ILC_GET_HANDLE(i32* %231)
  %233 = load i32, i32* @OMX_IndexParamAudioPcm, align 4
  %234 = call i64 @OMX_SetParameter(i32 %232, i32 %233, %struct.TYPE_13__* %20)
  store i64 %234, i64* %18, align 8
  %235 = load i64, i64* %18, align 8
  %236 = load i64, i64* @OMX_ErrorNone, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* @OMX_StateIdle, align 4
  %244 = call i32 @ilclient_change_component_state(i32* %242, i32 %243)
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = call i64 @ilclient_enable_port_buffers(i32* %247, i32 100, i32* null, i32* null, i32* null)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %276

250:                                              ; preds = %228
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* @OMX_StateLoaded, align 4
  %255 = call i32 @ilclient_change_component_state(i32* %253, i32 %254)
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 5
  %258 = load i32**, i32*** %257, align 8
  %259 = call i32 @ilclient_cleanup_components(i32** %258)
  %260 = call i64 (...) @OMX_Deinit()
  store i64 %260, i64* %18, align 8
  %261 = load i64, i64* %18, align 8
  %262 = load i64, i64* @OMX_ErrorNone, align 8
  %263 = icmp eq i64 %261, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @assert(i32 %264)
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 4
  %268 = load i32*, i32** %267, align 8
  %269 = call i32 @ilclient_destroy(i32* %268)
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 3
  %272 = call i32 @sem_destroy(i32* %271)
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %274 = call i32 @free(%struct.TYPE_14__* %273)
  %275 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %275, align 8
  store i64 -1, i64* %7, align 8
  br label %285

276:                                              ; preds = %228
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* @OMX_StateExecuting, align 4
  %281 = call i32 @ilclient_change_component_state(i32* %279, i32 %280)
  br label %282

282:                                              ; preds = %276, %52
  br label %283

283:                                              ; preds = %282, %48, %45, %42, %36, %33, %30, %6
  %284 = load i64, i64* %15, align 8
  store i64 %284, i64* %7, align 8
  br label %285

285:                                              ; preds = %283, %250
  %286 = load i64, i64* %7, align 8
  ret i64 %286
}

declare dso_local i32 @OUT_CHANNELS(i32) #1

declare dso_local %struct.TYPE_14__* @calloc(i32, i32) #1

declare dso_local i64 @sem_init(i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ilclient_init(...) #1

declare dso_local i32 @ilclient_set_empty_buffer_done_callback(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @OMX_Init(...) #1

declare dso_local i32 @ilclient_create_component(i32*, i32**, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @OMX_GetParameter(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ILC_GET_HANDLE(i32*) #1

declare dso_local i64 @OMX_SetParameter(i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ilclient_change_component_state(i32*, i32) #1

declare dso_local i64 @ilclient_enable_port_buffers(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ilclient_cleanup_components(i32**) #1

declare dso_local i64 @OMX_Deinit(...) #1

declare dso_local i32 @ilclient_destroy(i32*) #1

declare dso_local i32 @sem_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
