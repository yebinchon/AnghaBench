; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentSetParameter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_core.c_mmalomx_ComponentSetParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"hComponent %p, nParamIndex 0x%x (%s), pParam %p\00", align 1
@OMX_ErrorInvalidComponent = common dso_local global i32 0, align 4
@OMX_ErrorBadParameter = common dso_local global i32 0, align 4
@OMX_StateInvalid = common dso_local global i64 0, align 8
@OMX_ErrorInvalidState = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i32 0, align 4
@OMX_StateLoaded = common dso_local global i64 0, align 8
@OMX_ErrorIncorrectStateOperation = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"OMX_IndexParamAudioPortFormat commit failed\00", align 1
@OMX_VIDEO_CodingUnused = common dso_local global i32 0, align 4
@OMX_IndexParamBrcmZeroCopy = common dso_local global i32 0, align 4
@OMX_ErrorNotImplemented = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64)* @mmalomx_ComponentSetParameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmalomx_ComponentSetParameter(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mmalomx_param_to_string(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %20, i32 %22, i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @OMX_ErrorInvalidComponent, align 4
  store i32 %28, i32* %4, align 4
  br label %225

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %33, i32* %4, align 4
  br label %225

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 8
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @OMX_ErrorBadParameter, align 4
  store i32 %41, i32* %4, align 4
  br label %225

42:                                               ; preds = %34
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OMX_StateInvalid, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @OMX_ErrorInvalidState, align 4
  store i32 %49, i32* %4, align 4
  br label %225

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %195 [
    i32 131, label %52
    i32 134, label %65
    i32 130, label %75
    i32 135, label %97
    i32 128, label %132
    i32 133, label %185
    i32 132, label %185
    i32 129, label %186
  ]

52:                                               ; preds = %50
  %53 = load i64, i64* %7, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %54, %struct.TYPE_23__** %10, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PARAM_GET_PORT(%struct.TYPE_28__* %55, %struct.TYPE_18__* %56, i32 %59)
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %63 = call i32 @mmalomx_set_port_settings(%struct.TYPE_28__* %61, %struct.TYPE_23__* %62)
  %64 = call i32 @mmalil_error_to_omx(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %225

65:                                               ; preds = %50
  %66 = load i64, i64* %7, align 8
  %67 = inttoptr i64 %66 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %67, %struct.TYPE_25__** %11, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PARAM_GET_PORT(%struct.TYPE_28__* %68, %struct.TYPE_18__* %69, i32 %72)
  %74 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %74, i32* %4, align 4
  br label %225

75:                                               ; preds = %50
  %76 = load i64, i64* %7, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %12, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @OMX_StateLoaded, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @OMX_ErrorIncorrectStateOperation, align 4
  store i32 %84, i32* %4, align 4
  br label %225

85:                                               ; preds = %75
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %96, i32* %4, align 4
  br label %225

97:                                               ; preds = %50
  %98 = load i64, i64* %7, align 8
  %99 = inttoptr i64 %98 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %99, %struct.TYPE_27__** %13, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @PARAM_GET_PORT(%struct.TYPE_28__* %100, %struct.TYPE_18__* %101, i32 %104)
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @mmalil_omx_audio_coding_to_encoding(i32 %108)
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  store i32 %109, i32* %115, align 4
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %123, align 8
  %125 = call i32 @mmal_port_format_commit(%struct.TYPE_19__* %124)
  %126 = load i32, i32* @MMAL_SUCCESS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %97
  %129 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %97
  %131 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %131, i32* %4, align 4
  br label %225

132:                                              ; preds = %50
  %133 = load i64, i64* %7, align 8
  %134 = inttoptr i64 %133 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %134, %struct.TYPE_21__** %14, align 8
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @PARAM_GET_PORT(%struct.TYPE_28__* %135, %struct.TYPE_18__* %136, i32 %139)
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @OMX_VIDEO_CodingUnused, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %157

146:                                              ; preds = %132
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @mmalil_omx_video_coding_to_encoding(i32 %149)
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  store i32 %150, i32* %156, align 4
  br label %168

157:                                              ; preds = %132
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @mmalil_omx_color_format_to_encoding(i32 %160)
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  store i32 %161, i32* %167, align 4
  br label %168

168:                                              ; preds = %157, %146
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 4
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = call i32 @mmal_port_format_commit(%struct.TYPE_19__* %177)
  %179 = load i32, i32* @MMAL_SUCCESS, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %168
  %182 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %168
  %184 = load i32, i32* @OMX_ErrorNone, align 4
  store i32 %184, i32* %4, align 4
  br label %225

185:                                              ; preds = %50, %50
  br label %223

186:                                              ; preds = %50
  %187 = load i64, i64* %7, align 8
  %188 = inttoptr i64 %187 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %188, %struct.TYPE_24__** %15, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = call i32 @mmalomx_role_set(%struct.TYPE_18__* %189, i8* %193)
  store i32 %194, i32* %4, align 4
  br label %225

195:                                              ; preds = %50
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i64, i64* %7, align 8
  %199 = call i32 @mmalomx_parameter_set(%struct.TYPE_18__* %196, i32 %197, i64 %198)
  store i32 %199, i32* %16, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* @OMX_ErrorNone, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %221

203:                                              ; preds = %195
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @OMX_IndexParamBrcmZeroCopy, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %203
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %210 = load i64, i64* %7, align 8
  %211 = inttoptr i64 %210 to %struct.TYPE_26__*
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @PARAM_GET_PORT(%struct.TYPE_28__* %208, %struct.TYPE_18__* %209, i32 %213)
  %215 = load i64, i64* %7, align 8
  %216 = inttoptr i64 %215 to %struct.TYPE_26__*
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  br label %221

221:                                              ; preds = %207, %203, %195
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %4, align 4
  br label %225

223:                                              ; preds = %185
  %224 = load i32, i32* @OMX_ErrorNotImplemented, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %223, %221, %186, %183, %130, %85, %83, %65, %52, %48, %40, %32, %27
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @LOG_TRACE(i8*, i64, i32, i32, i64) #1

declare dso_local i32 @mmalomx_param_to_string(i32) #1

declare dso_local i32 @PARAM_GET_PORT(%struct.TYPE_28__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @mmalil_error_to_omx(i32) #1

declare dso_local i32 @mmalomx_set_port_settings(%struct.TYPE_28__*, %struct.TYPE_23__*) #1

declare dso_local i32 @mmalil_omx_audio_coding_to_encoding(i32) #1

declare dso_local i32 @mmal_port_format_commit(%struct.TYPE_19__*) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @mmalil_omx_video_coding_to_encoding(i32) #1

declare dso_local i32 @mmalil_omx_color_format_to_encoding(i32) #1

declare dso_local i32 @mmalomx_role_set(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @mmalomx_parameter_set(%struct.TYPE_18__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
