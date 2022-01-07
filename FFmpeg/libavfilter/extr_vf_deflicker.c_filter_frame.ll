; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deflicker.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deflicker.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_28__*, %struct.TYPE_30__** }
%struct.TYPE_28__ = type { i32, float*, i64, float (%struct.TYPE_31__*, %struct.TYPE_29__*)*, i32, i32, i32*, i32, %struct.TYPE_27__, i32*, i32 (%struct.TYPE_31__*, i32, i32, i32, i32, i32, i32, float)*, i32 (%struct.TYPE_31__*, float*)*, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i32*, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"lavfi.deflicker.luminance\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"lavfi.deflicker.new_luminance\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"lavfi.deflicker.relative_change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_29__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca [128 x i32], align 16
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  store %struct.TYPE_31__* %17, %struct.TYPE_31__** %6, align 8
  %18 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %20, i64 0
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  store %struct.TYPE_30__* %22, %struct.TYPE_30__** %7, align 8
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  store %struct.TYPE_28__* %25, %struct.TYPE_28__** %8, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %2
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 3
  %42 = load float (%struct.TYPE_31__*, %struct.TYPE_29__*)*, float (%struct.TYPE_31__*, %struct.TYPE_29__*)** %41, align 8
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %45 = call float %42(%struct.TYPE_31__* %43, %struct.TYPE_29__* %44)
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 1
  %48 = load float*, float** %47, align 8
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds float, float* %48, i64 %51
  store float %45, float* %52, align 4
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %57 = call i32 @ff_bufqueue_add(%struct.TYPE_31__* %53, %struct.TYPE_27__* %55, %struct.TYPE_29__* %56)
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  store i32 0, i32* %3, align 4
  br label %269

62:                                               ; preds = %34, %2
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 8
  %65 = call %struct.TYPE_29__* @ff_bufqueue_peek(%struct.TYPE_27__* %64, i32 0)
  store %struct.TYPE_29__* %65, %struct.TYPE_29__** %11, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_29__* @ff_get_video_buffer(%struct.TYPE_30__* %66, i32 %69, i32 %72)
  store %struct.TYPE_29__* %73, %struct.TYPE_29__** %10, align 8
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %75 = icmp ne %struct.TYPE_29__* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %62
  %77 = call i32 @av_frame_free(%struct.TYPE_29__** %5)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %269

80:                                               ; preds = %62
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 11
  %83 = load i32 (%struct.TYPE_31__*, float*)*, i32 (%struct.TYPE_31__*, float*)** %82, align 8
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %85 = call i32 %83(%struct.TYPE_31__* %84, float* %12)
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %123, label %90

90:                                               ; preds = %80
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 10
  %93 = load i32 (%struct.TYPE_31__*, i32, i32, i32, i32, i32, i32, float)*, i32 (%struct.TYPE_31__*, i32, i32, i32, i32, i32, i32, float)** %92, align 8
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load float, float* %12, align 4
  %122 = call i32 %93(%struct.TYPE_31__* %94, i32 %99, i32 %104, i32 %109, i32 %114, i32 %117, i32 %120, float %121)
  br label %123

123:                                              ; preds = %90, %80
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 1, %126
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %185, %123
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %188

134:                                              ; preds = %128
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 6
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = icmp sgt i32 %172, 8
  %174 = zext i1 %173 to i32
  %175 = add nsw i32 1, %174
  %176 = mul nsw i32 %169, %175
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 9
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @av_image_copy_plane(i32 %141, i32 %148, i32 %155, i32 %162, i32 %176, i32 %183)
  br label %185

185:                                              ; preds = %134
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %13, align 4
  br label %128

188:                                              ; preds = %128
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %191 = call i32 @av_frame_copy_props(%struct.TYPE_29__* %189, %struct.TYPE_29__* %190)
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 0
  store i32** %193, i32*** %9, align 8
  %194 = load i32**, i32*** %9, align 8
  %195 = icmp ne i32** %194, null
  br i1 %195, label %196, label %226

196:                                              ; preds = %188
  %197 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 1
  %200 = load float*, float** %199, align 8
  %201 = getelementptr inbounds float, float* %200, i64 0
  %202 = load float, float* %201, align 4
  %203 = call i32 @snprintf(i32* %197, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float %202)
  %204 = load i32**, i32*** %9, align 8
  %205 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %206 = call i32 @av_dict_set(i32** %204, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %205, i32 0)
  %207 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 1
  %210 = load float*, float** %209, align 8
  %211 = getelementptr inbounds float, float* %210, i64 0
  %212 = load float, float* %211, align 4
  %213 = load float, float* %12, align 4
  %214 = fmul float %212, %213
  %215 = call i32 @snprintf(i32* %207, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float %214)
  %216 = load i32**, i32*** %9, align 8
  %217 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %218 = call i32 @av_dict_set(i32** %216, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %217, i32 0)
  %219 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %220 = load float, float* %12, align 4
  %221 = fsub float %220, 1.000000e+00
  %222 = call i32 @snprintf(i32* %219, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float %221)
  %223 = load i32**, i32*** %9, align 8
  %224 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %225 = call i32 @av_dict_set(i32** %223, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* %224, i32 0)
  br label %226

226:                                              ; preds = %196, %188
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 8
  %229 = call %struct.TYPE_29__* @ff_bufqueue_get(%struct.TYPE_27__* %228)
  store %struct.TYPE_29__* %229, %struct.TYPE_29__** %11, align 8
  %230 = call i32 @av_frame_free(%struct.TYPE_29__** %11)
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 1
  %233 = load float*, float** %232, align 8
  %234 = getelementptr inbounds float, float* %233, i64 0
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 1
  %237 = load float*, float** %236, align 8
  %238 = getelementptr inbounds float, float* %237, i64 1
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = mul i64 4, %243
  %245 = trunc i64 %244 to i32
  %246 = call i32 @memmove(float* %234, float* %238, i32 %245)
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 3
  %249 = load float (%struct.TYPE_31__*, %struct.TYPE_29__*)*, float (%struct.TYPE_31__*, %struct.TYPE_29__*)** %248, align 8
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %252 = call float %249(%struct.TYPE_31__* %250, %struct.TYPE_29__* %251)
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 1
  %255 = load float*, float** %254, align 8
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = sub i64 %258, 1
  %260 = getelementptr inbounds float, float* %255, i64 %259
  store float %252, float* %260, align 4
  %261 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 8
  %264 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %265 = call i32 @ff_bufqueue_add(%struct.TYPE_31__* %261, %struct.TYPE_27__* %263, %struct.TYPE_29__* %264)
  %266 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %268 = call i32 @ff_filter_frame(%struct.TYPE_30__* %266, %struct.TYPE_29__* %267)
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %226, %76, %39
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @ff_bufqueue_add(%struct.TYPE_31__*, %struct.TYPE_27__*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ff_bufqueue_peek(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_29__* @ff_get_video_buffer(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_29__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_image_copy_plane(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, float) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_29__* @ff_bufqueue_get(%struct.TYPE_27__*) #1

declare dso_local i32 @memmove(float*, float*, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
