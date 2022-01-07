; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentAllocateBuffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentAllocateBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i64, i64, i64, i8*, i8*, i8*, i8*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i64, %struct.TYPE_21__*, i32, i8* }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }

@OMX_ErrorNone = common dso_local global i64 0, align 8
@MMAL_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [73 x i8] c"hComponent %p, ppBuffer %p, nPortIndex %i, pAppPrivate %p, nSizeBytes %i\00", align 1
@OMX_ErrorInvalidComponent = common dso_local global i64 0, align 8
@OMX_ErrorBadParameter = common dso_local global i64 0, align 8
@OMX_StateInvalid = common dso_local global i64 0, align 8
@OMX_ErrorInvalidState = common dso_local global i64 0, align 8
@OMX_ErrorBadPortIndex = common dso_local global i64 0, align 8
@MMALOMX_ACTION_CHECK_ALLOCATED = common dso_local global i32 0, align 4
@OMX_ErrorIncorrectStateOperation = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"buffer size too small (%i/%i)\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"buffer size too big (%i/%i)\00", align 1
@MMALOMX_ZERO_COPY_THRESHOLD = common dso_local global i64 0, align 8
@MMAL_PARAMETER_ZERO_COPY = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i8* null, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to enable zero copy on %s\00", align 1
@OMX_ErrorInsufficientResources = common dso_local global i64 0, align 8
@OMX_VERSION = common dso_local global i32 0, align 4
@OMX_DirInput = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"allocated %i/%i buffers\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to allocate %i/%i buffers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_18__**, i64, i8*, i64)* @mmalomx_ComponentAllocateBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmalomx_ComponentAllocateBuffer(i64 %0, %struct.TYPE_18__** %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_18__** %1, %struct.TYPE_18__*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %12, align 8
  %20 = load i64, i64* @OMX_ErrorNone, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i8*, i8** @MMAL_FALSE, align 8
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %14, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %15, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %23, %struct.TYPE_18__** %24, i32 %26, i8* %27, i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %5
  %34 = load i64, i64* @OMX_ErrorInvalidComponent, align 8
  store i64 %34, i64* %6, align 8
  br label %323

35:                                               ; preds = %5
  %36 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  %37 = icmp ne %struct.TYPE_18__** %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @OMX_ErrorBadParameter, align 8
  store i64 %39, i64* %6, align 8
  br label %323

40:                                               ; preds = %35
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @OMX_StateInvalid, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @OMX_ErrorInvalidState, align 8
  store i64 %47, i64* %6, align 8
  br label %323

48:                                               ; preds = %40
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @OMX_ErrorBadPortIndex, align 8
  store i64 %55, i64* %6, align 8
  br label %323

56:                                               ; preds = %48
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %58 = call i32 @mmalomx_commands_actions_check(%struct.TYPE_20__* %57)
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i64 %62
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %16, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %66 = call i32 @MMALOMX_LOCK_PORT(%struct.TYPE_20__* %64, %struct.TYPE_19__* %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MMALOMX_ACTION_CHECK_ALLOCATED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %56
  %74 = load i64, i64* @OMX_ErrorIncorrectStateOperation, align 8
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %73, %56
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i64, i64* @OMX_ErrorIncorrectStateOperation, align 8
  store i64 %81, i64* %13, align 8
  br label %82

82:                                               ; preds = %80, %75
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* @OMX_ErrorNone, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %286

87:                                               ; preds = %82
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 6
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load i64, i64* @OMX_ErrorBadParameter, align 8
  store i64 %101, i64* %13, align 8
  br label %286

102:                                              ; preds = %95, %90, %87
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %103, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %102
  %111 = load i64, i64* %11, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %118)
  %120 = load i64, i64* @OMX_ErrorBadParameter, align 8
  store i64 %120, i64* %13, align 8
  br label %286

121:                                              ; preds = %102
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  store i64 %127, i64* %131, align 8
  br label %132

132:                                              ; preds = %126, %121
  %133 = load i64, i64* %11, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ugt i64 %133, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %132
  %141 = load i64, i64* %11, align 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %142, i32 %148)
  %150 = load i64, i64* @OMX_ErrorBadParameter, align 8
  store i64 %150, i64* %13, align 8
  br label %286

151:                                              ; preds = %132
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 6
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %187, label %156

156:                                              ; preds = %151
  %157 = load i64, i64* %11, align 8
  %158 = load i64, i64* @MMALOMX_ZERO_COPY_THRESHOLD, align 8
  %159 = icmp ugt i64 %157, %158
  br i1 %159, label %160, label %187

160:                                              ; preds = %156
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %187, label %165

165:                                              ; preds = %160
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  %170 = load i8*, i8** @MMAL_TRUE, align 8
  %171 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_21__* %168, i32 %169, i8* %170)
  store i64 %171, i64* %17, align 8
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* @MMAL_SUCCESS, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %165
  %176 = load i64, i64* %17, align 8
  %177 = load i64, i64* @MMAL_ENOSYS, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %179, %175, %165
  br label %187

187:                                              ; preds = %186, %160, %156, %151
  %188 = call %struct.TYPE_18__* @calloc(i32 1, i32 80)
  store %struct.TYPE_18__* %188, %struct.TYPE_18__** %15, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %190 = icmp ne %struct.TYPE_18__* %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %187
  %192 = load i64, i64* @OMX_ErrorInsufficientResources, align 8
  store i64 %192, i64* %13, align 8
  br label %286

193:                                              ; preds = %187
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = load i64, i64* %11, align 8
  %198 = call i64 @mmal_port_payload_alloc(%struct.TYPE_21__* %196, i64 %197)
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 4
  store i64 %198, i64* %200, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %193
  %206 = load i64, i64* @OMX_ErrorInsufficientResources, align 8
  store i64 %206, i64* %13, align 8
  br label %286

207:                                              ; preds = %193
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  store i32 80, i32* %209, align 8
  %210 = load i32, i32* @OMX_VERSION, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 9
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 8
  %214 = load i64, i64* %11, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 8
  store i8* %217, i8** %219, align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @OMX_DirInput, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %207
  %226 = load i64, i64* %9, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 2
  store i64 %226, i64* %228, align 8
  %229 = load i8*, i8** %10, align 8
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 7
  store i8* %229, i8** %231, align 8
  br label %239

232:                                              ; preds = %207
  %233 = load i64, i64* %9, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 3
  store i64 %233, i64* %235, align 8
  %236 = load i8*, i8** %10, align 8
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 6
  store i8* %236, i8** %238, align 8
  br label %239

239:                                              ; preds = %232, %225
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = inttoptr i64 %242 to i8*
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 5
  store i8* %243, i8** %245, align 8
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %247 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %8, align 8
  store %struct.TYPE_18__* %246, %struct.TYPE_18__** %247, align 8
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 8
  %252 = load i8*, i8** @MMAL_TRUE, align 8
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 6
  store i8* %252, i8** %254, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 4
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %257, %262
  %264 = zext i1 %263 to i32
  store i32 %264, i32* %14, align 4
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %269 = call i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_20__* %267, %struct.TYPE_19__* %268)
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %272, i32 %277)
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %239
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %283 = call i32 @mmalomx_commands_actions_signal(%struct.TYPE_20__* %282)
  br label %284

284:                                              ; preds = %281, %239
  %285 = load i64, i64* @OMX_ErrorNone, align 8
  store i64 %285, i64* %6, align 8
  br label %323

286:                                              ; preds = %205, %191, %140, %110, %100, %86
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 6
  %289 = load i8*, i8** %288, align 8
  %290 = icmp ne i8* %289, null
  br i1 %290, label %303, label %291

291:                                              ; preds = %286
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %303, label %296

296:                                              ; preds = %291
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 4
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %298, align 8
  %300 = load i32, i32* @MMAL_PARAMETER_ZERO_COPY, align 4
  %301 = load i8*, i8** @MMAL_FALSE, align 8
  %302 = call i64 @mmal_port_parameter_set_boolean(%struct.TYPE_21__* %299, i32 %300, i8* %301)
  br label %303

303:                                              ; preds = %296, %291, %286
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %306 = call i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_20__* %304, %struct.TYPE_19__* %305)
  %307 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 4
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = call i32 (i8*, i32, ...) @LOG_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %309, i32 %314)
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %317 = icmp ne %struct.TYPE_18__* %316, null
  br i1 %317, label %318, label %321

318:                                              ; preds = %303
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %320 = call i32 @free(%struct.TYPE_18__* %319)
  br label %321

321:                                              ; preds = %318, %303
  %322 = load i64, i64* %13, align 8
  store i64 %322, i64* %6, align 8
  br label %323

323:                                              ; preds = %321, %284, %54, %46, %38, %33
  %324 = load i64, i64* %6, align 8
  ret i64 %324
}

declare dso_local i32 @LOG_TRACE(i8*, i64, %struct.TYPE_18__**, i32, i8*, i32) #1

declare dso_local i32 @mmalomx_commands_actions_check(%struct.TYPE_20__*) #1

declare dso_local i32 @MMALOMX_LOCK_PORT(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, ...) #1

declare dso_local i64 @mmal_port_parameter_set_boolean(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local %struct.TYPE_18__* @calloc(i32, i32) #1

declare dso_local i64 @mmal_port_payload_alloc(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @MMALOMX_UNLOCK_PORT(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @LOG_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @mmalomx_commands_actions_signal(%struct.TYPE_20__*) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
