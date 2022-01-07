; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_derain.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_derain.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_20__*, %struct.TYPE_22__** }
%struct.TYPE_20__ = type { %struct.TYPE_24__, %struct.TYPE_19__, i32, %struct.TYPE_18__* }
%struct.TYPE_24__ = type { i32, i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 (i32, %struct.TYPE_24__*, i32)* }
%struct.TYPE_21__ = type { i32, i32, i32*, double** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not allocate memory for output frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DNN_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to execute model\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %6, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %26, i64 0
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %7, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %8, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__* %32, i32 %35, i32 %38)
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %11, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %41 = icmp ne %struct.TYPE_21__* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %2
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 @av_log(%struct.TYPE_23__* %43, i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %252

49:                                               ; preds = %2
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %52 = call i32 @av_frame_copy_props(%struct.TYPE_21__* %50, %struct.TYPE_21__* %51)
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %108, %49
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %111

59:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %104, %59
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 3
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %60
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %68, %73
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = mul nsw i32 %81, 3
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %15, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 3
  %87 = load double**, double*** %86, align 8
  %88 = getelementptr inbounds double*, double** %87, i64 0
  %89 = load double*, double** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fdiv double %93, 2.550000e+02
  %95 = fptrunc double %94 to float
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to float*
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %100, i64 %102
  store float %95, float* %103, align 4
  br label %104

104:                                              ; preds = %67
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %60

107:                                              ; preds = %60
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  br label %53

111:                                              ; preds = %53
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i64 (i32, %struct.TYPE_24__*, i32)*, i64 (i32, %struct.TYPE_24__*, i32)** %115, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = call i64 %116(i32 %119, %struct.TYPE_24__* %121, i32 1)
  store i64 %122, i64* %9, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @DNN_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %111
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %128 = load i32, i32* @AV_LOG_ERROR, align 4
  %129 = call i32 @av_log(%struct.TYPE_23__* %127, i32 %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %130 = load i32, i32* @EIO, align 4
  %131 = call i32 @AVERROR(i32 %130)
  store i32 %131, i32* %3, align 4
  br label %252

132:                                              ; preds = %111
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %159, %162
  %164 = ashr i32 %163, 1
  store i32 %164, i32* %10, align 4
  store i32 0, i32* %16, align 4
  br label %165

165:                                              ; preds = %244, %132
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %247

171:                                              ; preds = %165
  store i32 0, i32* %17, align 4
  br label %172

172:                                              ; preds = %240, %171
  %173 = load i32, i32* %17, align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %176, 3
  %178 = icmp slt i32 %173, %177
  br i1 %178, label %179, label %243

179:                                              ; preds = %172
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %180, %185
  %187 = load i32, i32* %17, align 4
  %188 = add nsw i32 %186, %187
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %189, %192
  %194 = mul nsw i32 %193, 3
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %194, %195
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %197, %198
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %199, %202
  %204 = mul nsw i32 %203, 3
  %205 = load i32, i32* %17, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* %10, align 4
  %208 = mul nsw i32 %207, 3
  %209 = add nsw i32 %206, %208
  store i32 %209, i32* %20, align 4
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to float*
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %214, i64 %216
  %218 = load float, float* %217, align 4
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = inttoptr i64 %222 to float*
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  %227 = load float, float* %226, align 4
  %228 = fsub float %218, %227
  %229 = fmul float %228, 2.550000e+02
  %230 = fptosi float %229 to i32
  %231 = call double @CLIP(i32 %230, i32 0, i32 255)
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 3
  %234 = load double**, double*** %233, align 8
  %235 = getelementptr inbounds double*, double** %234, i64 0
  %236 = load double*, double** %235, align 8
  %237 = load i32, i32* %18, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds double, double* %236, i64 %238
  store double %231, double* %239, align 8
  br label %240

240:                                              ; preds = %179
  %241 = load i32, i32* %17, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %17, align 4
  br label %172

243:                                              ; preds = %172
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %16, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %16, align 4
  br label %165

247:                                              ; preds = %165
  %248 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %251 = call i32 @ff_filter_frame(%struct.TYPE_22__* %249, %struct.TYPE_21__* %250)
  store i32 %251, i32* %3, align 4
  br label %252

252:                                              ; preds = %247, %126, %42
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local double @CLIP(i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
