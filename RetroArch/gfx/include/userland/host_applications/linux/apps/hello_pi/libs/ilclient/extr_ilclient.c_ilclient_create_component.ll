; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_create_component.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/ilclient/extr_ilclient.c_ilclient_create_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i64*, i64*, i32* }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"il:comp\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"cl:%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cl:%s buffer\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"OMX.broadcom.\00", align 1
@ilclient_event_handler = common dso_local global i32 0, align 4
@ILCLIENT_ENABLE_INPUT_BUFFERS = common dso_local global i32 0, align 4
@ilclient_empty_buffer_done = common dso_local global i32 0, align 4
@ilclient_empty_buffer_done_error = common dso_local global i32 0, align 4
@ILCLIENT_ENABLE_OUTPUT_BUFFERS = common dso_local global i32 0, align 4
@ilclient_fill_buffer_done = common dso_local global i32 0, align 4
@ilclient_fill_buffer_done_error = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i64 0, align 8
@ILCLIENT_DISABLE_ALL_PORTS = common dso_local global i32 0, align 4
@ILCLIENT_OUTPUT_ZERO_BUFFERS = common dso_local global i32 0, align 4
@OMX_IndexParamAudioInit = common dso_local global i32 0, align 4
@OMX_IndexParamVideoInit = common dso_local global i32 0, align 4
@OMX_IndexParamImageInit = common dso_local global i32 0, align 4
@OMX_IndexParamOtherInit = common dso_local global i32 0, align 4
@OMX_VERSION = common dso_local global i8* null, align 8
@OMX_IndexParamPortDefinition = common dso_local global i32 0, align 4
@OMX_DirOutput = common dso_local global i64 0, align 8
@COMP_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilclient_create_component(i32* %0, %struct.TYPE_18__** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__, align 4
  %11 = alloca i64, align 8
  %12 = alloca [128 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [128 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_16__, align 8
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_16__, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = call %struct.TYPE_18__* @vcos_malloc(i32 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %26, align 8
  %27 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = icmp ne %struct.TYPE_18__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %272

31:                                               ; preds = %4
  %32 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = call i32 @memset(%struct.TYPE_18__* %33, i32 0, i32 40)
  %35 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = call i64 @vcos_event_flags_create(i32* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @VCOS_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @vc_assert(i32 %42)
  %44 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = call i64 @vcos_semaphore_create(i32* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @VCOS_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @vc_assert(i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 6
  store i32* %53, i32** %56, align 8
  %57 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 5
  %60 = load i64*, i64** %59, align 8
  %61 = bitcast i64* %60 to i8*
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i8*, i32, i8*, i8*, ...) @vcos_snprintf(i8* %61, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 4
  %67 = load i64*, i64** %66, align 8
  %68 = bitcast i64* %67 to i8*
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 (i8*, i32, i8*, i8*, ...) @vcos_snprintf(i8* %68, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 (i8*, i32, i8*, i8*, ...) @vcos_snprintf(i8* %71, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* @ilclient_event_handler, align 4
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @ILCLIENT_ENABLE_INPUT_BUFFERS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %31
  %85 = load i32, i32* @ilclient_empty_buffer_done, align 4
  br label %88

86:                                               ; preds = %31
  %87 = load i32, i32* @ilclient_empty_buffer_done_error, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @ILCLIENT_ENABLE_OUTPUT_BUFFERS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @ilclient_fill_buffer_done, align 4
  br label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @ilclient_fill_buffer_done_error, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 3
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %106 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = call i64 @OMX_GetHandle(i32* %104, i8* %105, %struct.TYPE_18__* %107, %struct.TYPE_17__* %10)
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @OMX_ErrorNone, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %259

112:                                              ; preds = %99
  %113 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %118 = call i64 @OMX_GetComponentVersion(i32 %116, i8* %117, i32* %16, i32* %17, i64* %14)
  %119 = load i64, i64* @OMX_ErrorNone, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %151

121:                                              ; preds = %112
  %122 = load i64, i64* %14, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @strlen(i32 ptrtoint ([14 x i8]* @.str.4 to i32))
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8* %126, i8** %18, align 8
  %127 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 5
  %130 = load i64*, i64** %129, align 8
  %131 = bitcast i64* %130 to i8*
  %132 = load i8*, i8** %18, align 8
  %133 = call i32 (i8*, i32, i8*, i8*, ...) @vcos_snprintf(i8* %131, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %132)
  %134 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 5
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 7
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 4
  %142 = load i64*, i64** %141, align 8
  %143 = bitcast i64* %142 to i8*
  %144 = load i8*, i8** %18, align 8
  %145 = call i32 (i8*, i32, i8*, i8*, ...) @vcos_snprintf(i8* %143, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %144)
  %146 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 4
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 7
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %121, %112
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @ILCLIENT_DISABLE_ALL_PORTS, align 4
  %154 = load i32, i32* @ILCLIENT_OUTPUT_ZERO_BUFFERS, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %258

158:                                              ; preds = %151
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %160 = load i32, i32* @OMX_IndexParamAudioInit, align 4
  store i32 %160, i32* %159, align 4
  %161 = getelementptr inbounds i32, i32* %159, i64 1
  %162 = load i32, i32* @OMX_IndexParamVideoInit, align 4
  store i32 %162, i32* %161, align 4
  %163 = getelementptr inbounds i32, i32* %161, i64 1
  %164 = load i32, i32* @OMX_IndexParamImageInit, align 4
  store i32 %164, i32* %163, align 4
  %165 = getelementptr inbounds i32, i32* %163, i64 1
  %166 = load i32, i32* @OMX_IndexParamOtherInit, align 4
  store i32 %166, i32* %165, align 4
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  store i32 56, i32* %167, align 8
  %168 = load i8*, i8** @OMX_VERSION, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  store i32 0, i32* %21, align 4
  br label %171

171:                                              ; preds = %254, %158
  %172 = load i32, i32* %21, align 4
  %173 = icmp slt i32 %172, 4
  br i1 %173, label %174, label %257

174:                                              ; preds = %171
  %175 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %21, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @OMX_GetParameter(i32 %178, i32 %182, %struct.TYPE_16__* %19)
  store i64 %183, i64* %22, align 8
  %184 = load i64, i64* %22, align 8
  %185 = load i64, i64* @OMX_ErrorNone, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %253

187:                                              ; preds = %174
  store i64 0, i64* %23, align 8
  br label %188

188:                                              ; preds = %249, %187
  %189 = load i64, i64* %23, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp slt i64 %189, %191
  br i1 %192, label %193, label %252

193:                                              ; preds = %188
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @ILCLIENT_DISABLE_ALL_PORTS, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %193
  %199 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %23, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @ilclient_disable_port(%struct.TYPE_18__* %200, i64 %204)
  br label %206

206:                                              ; preds = %198, %193
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* @ILCLIENT_OUTPUT_ZERO_BUFFERS, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %248

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  store i32 56, i32* %212, align 8
  %213 = load i8*, i8** @OMX_VERSION, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 6
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %23, align 8
  %219 = add nsw i64 %217, %218
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 5
  store i64 %219, i64* %220, align 8
  %221 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %226 = call i64 @OMX_GetParameter(i32 %224, i32 %225, %struct.TYPE_16__* %24)
  %227 = load i64, i64* @OMX_ErrorNone, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %247

229:                                              ; preds = %211
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @OMX_DirOutput, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %246

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 4
  store i64 0, i64* %239, align 8
  %240 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @OMX_IndexParamPortDefinition, align 4
  %245 = call i32 @OMX_SetParameter(i32 %243, i32 %244, %struct.TYPE_16__* %24)
  br label %246

246:                                              ; preds = %238, %234, %229
  br label %247

247:                                              ; preds = %246, %211
  br label %248

248:                                              ; preds = %247, %206
  br label %249

249:                                              ; preds = %248
  %250 = load i64, i64* %23, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* %23, align 8
  br label %188

252:                                              ; preds = %188
  br label %253

253:                                              ; preds = %252, %174
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %21, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %21, align 4
  br label %171

257:                                              ; preds = %171
  br label %258

258:                                              ; preds = %257, %151
  store i32 0, i32* %5, align 4
  br label %272

259:                                              ; preds = %99
  %260 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 2
  %263 = call i32 @vcos_event_flags_delete(i32* %262)
  %264 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = call i32 @vcos_semaphore_delete(i32* %266)
  %268 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %268, align 8
  %270 = call i32 @vcos_free(%struct.TYPE_18__* %269)
  %271 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %271, align 8
  store i32 -1, i32* %5, align 4
  br label %272

272:                                              ; preds = %259, %258, %30
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local %struct.TYPE_18__* @vcos_malloc(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @vcos_event_flags_create(i32*, i8*) #1

declare dso_local i32 @vc_assert(i32) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i32 @vcos_snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i64 @OMX_GetHandle(i32*, i8*, %struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i64 @OMX_GetComponentVersion(i32, i8*, i32*, i32*, i64*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @OMX_GetParameter(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ilclient_disable_port(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @OMX_SetParameter(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @vcos_event_flags_delete(i32*) #1

declare dso_local i32 @vcos_semaphore_delete(i32*) #1

declare dso_local i32 @vcos_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
