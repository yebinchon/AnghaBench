; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_resample.c_ff_audio_resample_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_resample.c_ff_audio_resample_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_16__*, i64, i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, double, i32, i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unsupported internal format for resampling: %s\0A\00", align 1
@resample_linear_dbl = common dso_local global i32 0, align 4
@resample_one_dbl = common dso_local global i32 0, align 4
@resample_nearest_dbl = common dso_local global i32 0, align 4
@set_filter_dbl = common dso_local global i32 0, align 4
@resample_linear_flt = common dso_local global i32 0, align 4
@resample_one_flt = common dso_local global i32 0, align 4
@resample_nearest_flt = common dso_local global i32 0, align 4
@set_filter_flt = common dso_local global i32 0, align 4
@resample_linear_s32 = common dso_local global i32 0, align 4
@resample_one_s32 = common dso_local global i32 0, align 4
@resample_nearest_s32 = common dso_local global i32 0, align 4
@set_filter_s32 = common dso_local global i32 0, align 4
@resample_linear_s16 = common dso_local global i32 0, align 4
@resample_one_s16 = common dso_local global i32 0, align 4
@resample_nearest_s16 = common dso_local global i32 0, align 4
@set_filter_s16 = common dso_local global i32 0, align 4
@ARCH_AARCH64 = common dso_local global i64 0, align 8
@ARCH_ARM = common dso_local global i64 0, align 8
@INT32_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"resample buffer\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"resample: %s from %d Hz to %d Hz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @ff_audio_resample_init(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %20, %21
  %23 = call double @FFMIN(i32 %22, double 1.000000e+00)
  store double %23, double* %7, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 129
  br i1 %31, label %32, label %55

32:                                               ; preds = %1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 128
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 130
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 131
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @av_get_sample_fmt_name(i32 %52)
  %54 = call i32 (%struct.TYPE_15__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_15__* %48, i32 %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %53)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %361

55:                                               ; preds = %42, %37, %32, %1
  %56 = call i8* @av_mallocz(i32 120)
  %57 = bitcast i8* %56 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %4, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = icmp ne %struct.TYPE_14__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %361

61:                                               ; preds = %55
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 20
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 16
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 5
  %81 = load double, double* %80, align 8
  %82 = load double, double* %7, align 8
  %83 = fdiv double %81, %82
  %84 = call i64 @ceil(double %83)
  %85 = trunc i64 %84 to i32
  %86 = call i32 @FFMAX(i32 %85, i32 1)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 19
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 18
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %178 [
    i32 131, label %102
    i32 130, label %121
    i32 128, label %140
    i32 129, label %159
  ]

102:                                              ; preds = %61
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 16
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @resample_linear_dbl, align 4
  br label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @resample_one_dbl, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 17
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @resample_nearest_dbl, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 15
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @set_filter_dbl, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 14
  store i32 %118, i32* %120, align 8
  br label %178

121:                                              ; preds = %61
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 16
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @resample_linear_flt, align 4
  br label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @resample_one_flt, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 17
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @resample_nearest_flt, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 15
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @set_filter_flt, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 14
  store i32 %137, i32* %139, align 8
  br label %178

140:                                              ; preds = %61
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 16
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @resample_linear_s32, align 4
  br label %149

147:                                              ; preds = %140
  %148 = load i32, i32* @resample_one_s32, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 17
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @resample_nearest_s32, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 15
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @set_filter_s32, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 14
  store i32 %156, i32* %158, align 8
  br label %178

159:                                              ; preds = %61
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 16
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* @resample_linear_s16, align 4
  br label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @resample_one_s16, align 4
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 17
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @resample_nearest_s16, align 4
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 15
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @set_filter_s16, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 14
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %61, %168, %149, %130, %111
  %179 = load i64, i64* @ARCH_AARCH64, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @ff_audio_resample_init_aarch64(%struct.TYPE_14__* %182, i32 %185)
  br label %187

187:                                              ; preds = %181, %178
  %188 = load i64, i64* @ARCH_ARM, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ff_audio_resample_init_arm(%struct.TYPE_14__* %191, i32 %194)
  br label %196

196:                                              ; preds = %190, %187
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @av_get_bytes_per_sample(i32 %199)
  store i32 %200, i32* %9, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  %206 = mul nsw i32 %203, %205
  %207 = load i32, i32* %9, align 4
  %208 = mul nsw i32 %206, %207
  %209 = call i8* @av_mallocz(i32 %208)
  %210 = bitcast i8* %209 to %struct.TYPE_14__*
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 5
  store %struct.TYPE_14__* %210, %struct.TYPE_14__** %212, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 5
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = icmp ne %struct.TYPE_14__* %215, null
  br i1 %216, label %218, label %217

217:                                              ; preds = %196
  br label %351

218:                                              ; preds = %196
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %220 = load double, double* %7, align 8
  %221 = call i64 @build_filter(%struct.TYPE_14__* %219, double %220)
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %351

224:                                              ; preds = %218
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 5
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = mul nsw i32 %230, %231
  %233 = add nsw i32 %232, 1
  %234 = load i32, i32* %9, align 4
  %235 = mul nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i64 %236
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 5
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %239, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = sub nsw i32 %243, 1
  %245 = load i32, i32* %9, align 4
  %246 = mul nsw i32 %244, %245
  %247 = call i32 @memcpy(%struct.TYPE_14__* %237, %struct.TYPE_14__* %240, i32 %246)
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 5
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %249, align 8
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = mul nsw i32 %253, %254
  %256 = load i32, i32* %9, align 4
  %257 = mul nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i64 %258
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 5
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %261, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = sub nsw i32 %265, 1
  %267 = load i32, i32* %9, align 4
  %268 = mul nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i64 %269
  %271 = load i32, i32* %9, align 4
  %272 = call i32 @memcpy(%struct.TYPE_14__* %259, %struct.TYPE_14__* %270, i32 %271)
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 13
  store i64 0, i64* %274, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 12
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 10
  %279 = load i32, i32* %5, align 4
  %280 = load i32, i32* %6, align 4
  %281 = load i32, i32* %8, align 4
  %282 = mul nsw i32 %280, %281
  %283 = load i32, i32* @INT32_MAX, align 4
  %284 = sdiv i32 %283, 2
  %285 = call i32 @av_reduce(i32* %276, i32* %278, i32 %279, i32 %282, i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %224
  br label %351

288:                                              ; preds = %224
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 10
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 11
  store i32 %291, i32* %293, align 4
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %296, 1
  %298 = sdiv i32 %297, 2
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 4
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 9
  store i64 0, i64* %302, align 8
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 8
  store i64 0, i64* %304, align 8
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 7
  store i64 0, i64* %306, align 8
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = call %struct.TYPE_16__* @ff_audio_data_alloc(i32 %309, i32 %312, i32 %315, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 6
  store %struct.TYPE_16__* %316, %struct.TYPE_16__** %318, align 8
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 6
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %320, align 8
  %322 = icmp ne %struct.TYPE_16__* %321, null
  br i1 %322, label %324, label %323

323:                                              ; preds = %288
  br label %351

324:                                              ; preds = %288
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 6
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  store i32 %327, i32* %331, align 4
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 4
  store i32 %334, i32* %336, align 8
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %338 = load i32, i32* @AV_LOG_DEBUG, align 4
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @av_get_sample_fmt_name(i32 %341)
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = call i32 (%struct.TYPE_15__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_15__* %337, i32 %338, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %342, i32 %345, i32 %348)
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %350, %struct.TYPE_14__** %2, align 8
  br label %361

351:                                              ; preds = %323, %287, %223, %217
  %352 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %352, i32 0, i32 6
  %354 = call i32 @ff_audio_data_free(%struct.TYPE_16__** %353)
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 5
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %356, align 8
  %358 = call i32 @av_free(%struct.TYPE_14__* %357)
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %360 = call i32 @av_free(%struct.TYPE_14__* %359)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %361

361:                                              ; preds = %351, %324, %60, %47
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %362
}

declare dso_local double @FFMIN(i32, double) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, ...) #1

declare dso_local i32 @av_get_sample_fmt_name(i32) #1

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i64 @ceil(double) #1

declare dso_local i32 @ff_audio_resample_init_aarch64(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ff_audio_resample_init_arm(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i64 @build_filter(%struct.TYPE_14__*, double) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @ff_audio_data_alloc(i32, i32, i32, i8*) #1

declare dso_local i32 @ff_audio_data_free(%struct.TYPE_16__**) #1

declare dso_local i32 @av_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
