; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_volume.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_volume.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__**, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, float, i32, i32*, i64, i64, i32, i32, %struct.TYPE_24__*, i32, i32 (i64, i64, i32, i32)*, i32, i64 }
%struct.TYPE_24__ = type { i32 (double*, double*, double, i32)*, i32 (float*, float*, double, i32)* }
%struct.TYPE_28__ = type { i32, i32, i64*, i32, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, i64, i64 }

@AV_FRAME_DATA_REPLAYGAIN = common dso_local global i32 0, align 4
@REPLAYGAIN_IGNORE = common dso_local global i64 0, align 8
@REPLAYGAIN_DROP = common dso_local global i64 0, align 8
@REPLAYGAIN_TRACK = common dso_local global i64 0, align 8
@INT32_MIN = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Both ReplayGain gain values are unknown.\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Using gain %f dB from replaygain side data.\0A\00", align 1
@VAR_STARTPTS = common dso_local global i64 0, align 8
@VAR_STARTT = common dso_local global i64 0, align 8
@VAR_PTS = common dso_local global i64 0, align 8
@VAR_T = common dso_local global i64 0, align 8
@VAR_N = common dso_local global i64 0, align 8
@NAN = common dso_local global i32 0, align 4
@VAR_POS = common dso_local global i64 0, align 8
@EVAL_MODE_FRAME = common dso_local global i64 0, align 8
@PRECISION_FIXED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_FLT = common dso_local global i64 0, align 8
@VAR_NB_CONSUMED_SAMPLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_28__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %22, align 8
  store %struct.TYPE_30__* %23, %struct.TYPE_30__** %6, align 8
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %7, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %33, i64 0
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  store %struct.TYPE_29__* %35, %struct.TYPE_29__** %8, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %40 = load i32, i32* @AV_FRAME_DATA_REPLAYGAIN, align 4
  %41 = call %struct.TYPE_27__* @av_frame_get_side_data(%struct.TYPE_28__* %39, i32 %40)
  store %struct.TYPE_27__* %41, %struct.TYPE_27__** %12, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %43 = icmp ne %struct.TYPE_27__* %42, null
  br i1 %43, label %44, label %166

44:                                               ; preds = %2
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REPLAYGAIN_IGNORE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %166

50:                                               ; preds = %44
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @REPLAYGAIN_DROP, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %162

56:                                               ; preds = %50
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %60, %struct.TYPE_26__** %14, align 8
  store float 1.000000e+05, float* %15, align 4
  store float 1.000000e+05, float* %16, align 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @REPLAYGAIN_TRACK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %56
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @INT32_MIN, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to float
  store float %76, float* %15, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sitofp i64 %84 to float
  store float %85, float* %16, align 4
  br label %86

86:                                               ; preds = %81, %72
  br label %115

87:                                               ; preds = %66, %56
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @INT32_MIN, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to float
  store float %97, float* %15, align 4
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = sitofp i64 %105 to float
  store float %106, float* %16, align 4
  br label %107

107:                                              ; preds = %102, %93
  br label %114

108:                                              ; preds = %87
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %110, align 8
  %112 = load i32, i32* @AV_LOG_WARNING, align 4
  %113 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @av_log(%struct.TYPE_30__* %111, i32 %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %108, %107
  br label %115

115:                                              ; preds = %114, %86
  %116 = load float, float* %15, align 4
  %117 = fdiv float %116, 1.000000e+05
  store float %117, float* %17, align 4
  %118 = load float, float* %16, align 4
  %119 = fdiv float %118, 1.000000e+05
  store float %119, float* %18, align 4
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %121, align 8
  %123 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %124 = load float, float* %17, align 4
  %125 = fpext float %124 to double
  %126 = call i32 (%struct.TYPE_30__*, i32, i8*, ...) @av_log(%struct.TYPE_30__* %122, i32 %123, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), double %125)
  %127 = load float, float* %17, align 4
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 2
  %130 = load float, float* %129, align 4
  %131 = fadd float %127, %130
  %132 = fdiv float %131, 2.000000e+01
  %133 = call i32 @ff_exp10(float %132)
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 13
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %115
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load float, float* %18, align 4
  %145 = fpext float %144 to double
  %146 = fdiv double 1.000000e+00, %145
  %147 = call i32 @FFMIN(i32 %143, double %146)
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %140, %115
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = mul nsw i32 %153, 256
  %155 = sitofp i32 %154 to double
  %156 = fadd double %155, 5.000000e-01
  %157 = fptosi double %156 to i32
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %161 = call i32 @volume_init(%struct.TYPE_25__* %160)
  br label %162

162:                                              ; preds = %150, %50
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %164 = load i32, i32* @AV_FRAME_DATA_REPLAYGAIN, align 4
  %165 = call i32 @av_frame_remove_side_data(%struct.TYPE_28__* %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %44, %2
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @VAR_STARTPTS, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @isnan(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %166
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @TS2D(i32 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @VAR_STARTPTS, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32 %180, i32* %185, align 4
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @TS2T(i32 %188, i32 %191)
  %193 = ptrtoint i8* %192 to i32
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* @VAR_STARTT, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32 %193, i32* %198, align 4
  br label %199

199:                                              ; preds = %175, %166
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @TS2D(i32 %202)
  %204 = ptrtoint i8* %203 to i32
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @VAR_PTS, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32 %204, i32* %209, align 4
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i8* @TS2T(i32 %212, i32 %215)
  %217 = ptrtoint i8* %216 to i32
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* @VAR_T, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32 %217, i32* %222, align 4
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* @VAR_N, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32 %225, i32* %230, align 4
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %11, align 4
  %235 = icmp eq i32 %234, -1
  br i1 %235, label %236, label %238

236:                                              ; preds = %199
  %237 = load i32, i32* @NAN, align 4
  br label %240

238:                                              ; preds = %199
  %239 = load i32, i32* %11, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 4
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* @VAR_POS, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32 %241, i32* %246, align 4
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @EVAL_MODE_FRAME, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %240
  %253 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %254 = call i32 @set_volume(%struct.TYPE_30__* %253)
  br label %255

255:                                              ; preds = %252, %240
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = sitofp i32 %258 to double
  %260 = fcmp oeq double %259, 1.000000e+00
  br i1 %260, label %266, label %261

261:                                              ; preds = %255
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = icmp eq i32 %264, 256
  br i1 %265, label %266, label %268

266:                                              ; preds = %261, %255
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_28__* %267, %struct.TYPE_28__** %10, align 8
  br label %474

268:                                              ; preds = %261
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %270 = call i64 @av_frame_is_writable(%struct.TYPE_28__* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %285

272:                                              ; preds = %268
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 6
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @PRECISION_FIXED, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %283, label %278

278:                                              ; preds = %272
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %278, %272
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_28__* %284, %struct.TYPE_28__** %10, align 8
  br label %306

285:                                              ; preds = %278, %268
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %287 = load i32, i32* %9, align 4
  %288 = call %struct.TYPE_28__* @ff_get_audio_buffer(%struct.TYPE_29__* %286, i32 %287)
  store %struct.TYPE_28__* %288, %struct.TYPE_28__** %10, align 8
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %290 = icmp ne %struct.TYPE_28__* %289, null
  br i1 %290, label %295, label %291

291:                                              ; preds = %285
  %292 = call i32 @av_frame_free(%struct.TYPE_28__** %5)
  %293 = load i32, i32* @ENOMEM, align 4
  %294 = call i32 @AVERROR(i32 %293)
  store i32 %294, i32* %3, align 4
  br label %488

295:                                              ; preds = %285
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %298 = call i32 @av_frame_copy_props(%struct.TYPE_28__* %296, %struct.TYPE_28__* %297)
  store i32 %298, i32* %13, align 4
  %299 = load i32, i32* %13, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %295
  %302 = call i32 @av_frame_free(%struct.TYPE_28__** %10)
  %303 = call i32 @av_frame_free(%struct.TYPE_28__** %5)
  %304 = load i32, i32* %13, align 4
  store i32 %304, i32* %3, align 4
  br label %488

305:                                              ; preds = %295
  br label %306

306:                                              ; preds = %305, %283
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 6
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @PRECISION_FIXED, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %317, label %312

312:                                              ; preds = %306
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %466

317:                                              ; preds = %312, %306
  %318 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = call i64 @av_sample_fmt_is_planar(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %317
  %324 = load i32, i32* %9, align 4
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 12
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @FFALIGN(i32 %324, i32 %327)
  store i32 %328, i32* %20, align 4
  br label %339

329:                                              ; preds = %317
  %330 = load i32, i32* %9, align 4
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 7
  %333 = load i32, i32* %332, align 8
  %334 = mul nsw i32 %330, %333
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 12
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @FFALIGN(i32 %334, i32 %337)
  store i32 %338, i32* %20, align 4
  br label %339

339:                                              ; preds = %329, %323
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 6
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @PRECISION_FIXED, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %379

345:                                              ; preds = %339
  store i32 0, i32* %19, align 4
  br label %346

346:                                              ; preds = %375, %345
  %347 = load i32, i32* %19, align 4
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 8
  %350 = load i32, i32* %349, align 4
  %351 = icmp slt i32 %347, %350
  br i1 %351, label %352, label %378

352:                                              ; preds = %346
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %353, i32 0, i32 11
  %355 = load i32 (i64, i64, i32, i32)*, i32 (i64, i64, i32, i32)** %354, align 8
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 2
  %358 = load i64*, i64** %357, align 8
  %359 = load i32, i32* %19, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i64, i64* %358, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i32 0, i32 2
  %365 = load i64*, i64** %364, align 8
  %366 = load i32, i32* %19, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i64, i64* %365, i64 %367
  %369 = load i64, i64* %368, align 8
  %370 = load i32, i32* %20, align 4
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 8
  %374 = call i32 %355(i64 %362, i64 %369, i32 %370, i32 %373)
  br label %375

375:                                              ; preds = %352
  %376 = load i32, i32* %19, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %19, align 4
  br label %346

378:                                              ; preds = %346
  br label %465

379:                                              ; preds = %339
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %380, i32 0, i32 10
  %382 = load i32, i32* %381, align 8
  %383 = call i64 @av_get_packed_sample_fmt(i32 %382)
  %384 = load i64, i64* @AV_SAMPLE_FMT_FLT, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %425

386:                                              ; preds = %379
  store i32 0, i32* %19, align 4
  br label %387

387:                                              ; preds = %421, %386
  %388 = load i32, i32* %19, align 4
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %389, i32 0, i32 8
  %391 = load i32, i32* %390, align 4
  %392 = icmp slt i32 %388, %391
  br i1 %392, label %393, label %424

393:                                              ; preds = %387
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %394, i32 0, i32 9
  %396 = load %struct.TYPE_24__*, %struct.TYPE_24__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %396, i32 0, i32 1
  %398 = load i32 (float*, float*, double, i32)*, i32 (float*, float*, double, i32)** %397, align 8
  %399 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %400 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %399, i32 0, i32 2
  %401 = load i64*, i64** %400, align 8
  %402 = load i32, i32* %19, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %401, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = inttoptr i64 %405 to float*
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %407, i32 0, i32 2
  %409 = load i64*, i64** %408, align 8
  %410 = load i32, i32* %19, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i64, i64* %409, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = inttoptr i64 %413 to float*
  %415 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 8
  %418 = sitofp i32 %417 to double
  %419 = load i32, i32* %20, align 4
  %420 = call i32 %398(float* %406, float* %414, double %418, i32 %419)
  br label %421

421:                                              ; preds = %393
  %422 = load i32, i32* %19, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %19, align 4
  br label %387

424:                                              ; preds = %387
  br label %464

425:                                              ; preds = %379
  store i32 0, i32* %19, align 4
  br label %426

426:                                              ; preds = %460, %425
  %427 = load i32, i32* %19, align 4
  %428 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %428, i32 0, i32 8
  %430 = load i32, i32* %429, align 4
  %431 = icmp slt i32 %427, %430
  br i1 %431, label %432, label %463

432:                                              ; preds = %426
  %433 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %433, i32 0, i32 9
  %435 = load %struct.TYPE_24__*, %struct.TYPE_24__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %435, i32 0, i32 0
  %437 = load i32 (double*, double*, double, i32)*, i32 (double*, double*, double, i32)** %436, align 8
  %438 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %438, i32 0, i32 2
  %440 = load i64*, i64** %439, align 8
  %441 = load i32, i32* %19, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i64, i64* %440, i64 %442
  %444 = load i64, i64* %443, align 8
  %445 = inttoptr i64 %444 to double*
  %446 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %446, i32 0, i32 2
  %448 = load i64*, i64** %447, align 8
  %449 = load i32, i32* %19, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i64, i64* %448, i64 %450
  %452 = load i64, i64* %451, align 8
  %453 = inttoptr i64 %452 to double*
  %454 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 8
  %457 = sitofp i32 %456 to double
  %458 = load i32, i32* %20, align 4
  %459 = call i32 %437(double* %445, double* %453, double %457, i32 %458)
  br label %460

460:                                              ; preds = %432
  %461 = load i32, i32* %19, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %19, align 4
  br label %426

463:                                              ; preds = %426
  br label %464

464:                                              ; preds = %463, %424
  br label %465

465:                                              ; preds = %464, %378
  br label %466

466:                                              ; preds = %465, %312
  %467 = call i32 (...) @emms_c()
  %468 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %469 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %470 = icmp ne %struct.TYPE_28__* %468, %469
  br i1 %470, label %471, label %473

471:                                              ; preds = %466
  %472 = call i32 @av_frame_free(%struct.TYPE_28__** %5)
  br label %473

473:                                              ; preds = %471, %466
  br label %474

474:                                              ; preds = %473, %266
  %475 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %476 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %479 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %478, i32 0, i32 4
  %480 = load i32*, i32** %479, align 8
  %481 = load i64, i64* @VAR_NB_CONSUMED_SAMPLES, align 8
  %482 = getelementptr inbounds i32, i32* %480, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = add nsw i32 %483, %477
  store i32 %484, i32* %482, align 4
  %485 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %486 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %487 = call i32 @ff_filter_frame(%struct.TYPE_29__* %485, %struct.TYPE_28__* %486)
  store i32 %487, i32* %3, align 4
  br label %488

488:                                              ; preds = %474, %301, %291
  %489 = load i32, i32* %3, align 4
  ret i32 %489
}

declare dso_local %struct.TYPE_27__* @av_frame_get_side_data(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_30__*, i32, i8*, ...) #1

declare dso_local i32 @ff_exp10(float) #1

declare dso_local i32 @FFMIN(i32, double) #1

declare dso_local i32 @volume_init(%struct.TYPE_25__*) #1

declare dso_local i32 @av_frame_remove_side_data(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @isnan(i32) #1

declare dso_local i8* @TS2D(i32) #1

declare dso_local i8* @TS2T(i32, i32) #1

declare dso_local i32 @set_volume(%struct.TYPE_30__*) #1

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_28__* @ff_get_audio_buffer(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_28__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i64 @av_sample_fmt_is_planar(i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i64 @av_get_packed_sample_fmt(i32) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
