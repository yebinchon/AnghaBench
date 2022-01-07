; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_photosensitivity.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_photosensitivity.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_23__*, %struct.TYPE_25__** }
%struct.TYPE_23__ = type { i32, i32*, i32, i32, %struct.TYPE_24__*, i8*, i32, i64 }
%struct.TYPE_24__ = type { i32*, i32, i32 }

@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"badness: %6d -> %6d / %6d (%3d%% - %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"EXCEEDED\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"  fixed: %6d -> %6d / %6d (%3d%%) factor=%5.3f\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"lavfi.photosensitivity.badness\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"lavfi.photosensitivity.fixed-badness\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"lavfi.photosensitivity.frame-badness\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"lavfi.photosensitivity.factor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32**, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca [128 x i8], align 16
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  store %struct.TYPE_26__* %24, %struct.TYPE_26__** %18, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %27, i64 0
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %19, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %20, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %10, align 4
  br label %33

33:                                               ; preds = %59, %2
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = srem i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %43, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %40, %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %39
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %33

62:                                               ; preds = %33
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sdiv i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @convert_frame(%struct.TYPE_26__* %68, %struct.TYPE_24__* %69, i8** %12, i32 %72)
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 5
  %76 = call i32 @get_badness(i8** %12, i8** %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %9, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %81 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 100, %87
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %88, %91
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %100 = call i32 (%struct.TYPE_23__*, i32, i8*, i32, i32, i32, i32, ...) @av_log(%struct.TYPE_23__* %80, i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83, i32 %86, i32 %92, i8* %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %117, label %107

107:                                              ; preds = %62
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  %111 = icmp ne %struct.TYPE_24__* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %112, %107, %62
  store float 1.000000e+00, float* %16, align 4
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 4
  %120 = call i32 @av_frame_free(%struct.TYPE_24__** %119)
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %121, %struct.TYPE_24__** %13, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 4
  store %struct.TYPE_24__* %121, %struct.TYPE_24__** %123, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  store i32 %127, i32* %135, align 4
  br label %223

136:                                              ; preds = %112
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %139, %140
  %142 = sitofp i32 %141 to float
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sitofp i32 %145 to float
  %147 = fdiv float %142, %146
  store float %147, float* %16, align 4
  %148 = load float, float* %16, align 4
  %149 = fcmp ole float %148, 0.000000e+00
  br i1 %149, label %150, label %159

150:                                              ; preds = %136
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  store i32 0, i32* %158, align 4
  br label %219

159:                                              ; preds = %136
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = call i32 @av_frame_make_writable(%struct.TYPE_24__* %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %3, align 4
  br label %315

169:                                              ; preds = %159
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %172, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %175 = load float, float* %16, align 4
  %176 = call i32 @blend_frame(%struct.TYPE_26__* %170, %struct.TYPE_24__* %173, %struct.TYPE_24__* %174, float %175)
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %179, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @convert_frame(%struct.TYPE_26__* %177, %struct.TYPE_24__* %180, i8** %12, i32 %183)
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 5
  %187 = call i32 @get_badness(i8** %12, i8** %186)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %188, %189
  store i32 %190, i32* %8, align 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %192 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %9, align 4
  %199 = mul nsw i32 100, %198
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = sdiv i32 %199, %202
  %204 = load float, float* %16, align 4
  %205 = fpext float %204 to double
  %206 = call i32 (%struct.TYPE_23__*, i32, i8*, i32, i32, i32, i32, ...) @av_log(%struct.TYPE_23__* %191, i32 %192, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %193, i32 %194, i32 %197, i32 %203, double %205)
  %207 = load i8*, i8** %12, align 8
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 5
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* %6, align 4
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  store i32 %210, i32* %218, align 4
  br label %219

219:                                              ; preds = %169, %150
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 4
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %221, align 8
  store %struct.TYPE_24__* %222, %struct.TYPE_24__** %13, align 8
  store i32 1, i32* %15, align 4
  br label %223

223:                                              ; preds = %219, %117
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = srem i32 %227, %230
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = call %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__* %234, i32 %237, i32 %240)
  store %struct.TYPE_24__* %241, %struct.TYPE_24__** %14, align 8
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %243 = icmp ne %struct.TYPE_24__* %242, null
  br i1 %243, label %252, label %244

244:                                              ; preds = %223
  %245 = load i32, i32* %15, align 4
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  br label %249

249:                                              ; preds = %247, %244
  %250 = load i32, i32* @ENOMEM, align 4
  %251 = call i32 @AVERROR(i32 %250)
  store i32 %251, i32* %3, align 4
  br label %315

252:                                              ; preds = %223
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %255 = call i32 @av_frame_copy_props(%struct.TYPE_24__* %253, %struct.TYPE_24__* %254)
  %256 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %256, i32 0, i32 0
  store i32** %257, i32*** %17, align 8
  %258 = load i32**, i32*** %17, align 8
  %259 = icmp ne i32** %258, null
  br i1 %259, label %260, label %303

260:                                              ; preds = %252
  %261 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %262 = load i32, i32* %9, align 4
  %263 = sitofp i32 %262 to float
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = sitofp i32 %266 to float
  %268 = fdiv float %263, %267
  %269 = call i32 @snprintf(i8* %261, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), float %268)
  %270 = load i32**, i32*** %17, align 8
  %271 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %272 = call i32 @av_dict_set(i32** %270, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %271, i32 0)
  %273 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %274 = load i32, i32* %8, align 4
  %275 = sitofp i32 %274 to float
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = sitofp i32 %278 to float
  %280 = fdiv float %275, %279
  %281 = call i32 @snprintf(i8* %273, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), float %280)
  %282 = load i32**, i32*** %17, align 8
  %283 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %284 = call i32 @av_dict_set(i32** %282, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %283, i32 0)
  %285 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %286 = load i32, i32* %6, align 4
  %287 = sitofp i32 %286 to float
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = sitofp i32 %290 to float
  %292 = fdiv float %287, %291
  %293 = call i32 @snprintf(i8* %285, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), float %292)
  %294 = load i32**, i32*** %17, align 8
  %295 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %296 = call i32 @av_dict_set(i32** %294, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %295, i32 0)
  %297 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %298 = load float, float* %16, align 4
  %299 = call i32 @snprintf(i8* %297, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), float %298)
  %300 = load i32**, i32*** %17, align 8
  %301 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %302 = call i32 @av_dict_set(i32** %300, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %301, i32 0)
  br label %303

303:                                              ; preds = %260, %252
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %306 = call i32 @av_frame_copy(%struct.TYPE_24__* %304, %struct.TYPE_24__* %305)
  %307 = load i32, i32* %15, align 4
  %308 = icmp eq i32 %307, 1
  br i1 %308, label %309, label %311

309:                                              ; preds = %303
  %310 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  br label %311

311:                                              ; preds = %309, %303
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %314 = call i32 @ff_filter_frame(%struct.TYPE_25__* %312, %struct.TYPE_24__* %313)
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %311, %249, %166
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i32 @convert_frame(%struct.TYPE_26__*, %struct.TYPE_24__*, i8**, i32) #1

declare dso_local i32 @get_badness(i8**, i8**) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #1

declare dso_local i32 @av_frame_make_writable(%struct.TYPE_24__*) #1

declare dso_local i32 @blend_frame(%struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_24__*, float) #1

declare dso_local %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, float) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @av_frame_copy(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
