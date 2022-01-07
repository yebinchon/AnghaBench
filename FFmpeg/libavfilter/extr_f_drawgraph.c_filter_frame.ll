; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_drawgraph.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_drawgraph.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__**, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32*, float**, double, double, i32, i64, i32, i32*, %struct.TYPE_21__*, i32*, i32*, i32* }
%struct.TYPE_21__ = type { i64, i32, i32*, i32*, i32* }
%struct.TYPE_24__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VAR_VARS_NB = common dso_local global i32 0, align 4
@NAN = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@VAR_MIN = common dso_local global i64 0, align 8
@VAR_MAX = common dso_local global i64 0, align 8
@VAR_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %6, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %7, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %32, i64 0
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %8, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 10
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %11, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %164

42:                                               ; preds = %2
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %52, 4
  %54 = icmp uge i64 %46, %53
  br i1 %54, label %55, label %164

55:                                               ; preds = %42
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 3
  %58 = load float**, float*** %57, align 8
  %59 = getelementptr inbounds float*, float** %58, i64 0
  %60 = load float*, float** %59, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 2
  %71 = call float* @av_fast_realloc(float* %60, i32* %64, i32 %70)
  store float* %71, float** %13, align 8
  %72 = load float*, float** %13, align 8
  %73 = icmp ne float* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %55
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %826

77:                                               ; preds = %55
  %78 = load float*, float** %13, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 3
  %81 = load float**, float*** %80, align 8
  %82 = getelementptr inbounds float*, float** %81, i64 0
  store float* %78, float** %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 3
  %85 = load float**, float*** %84, align 8
  %86 = getelementptr inbounds float*, float** %85, i64 1
  %87 = load float*, float** %86, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 2
  %98 = call float* @av_fast_realloc(float* %87, i32* %91, i32 %97)
  store float* %98, float** %13, align 8
  %99 = load float*, float** %13, align 8
  %100 = icmp ne float* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %77
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = call i32 @AVERROR(i32 %102)
  store i32 %103, i32* %3, align 4
  br label %826

104:                                              ; preds = %77
  %105 = load float*, float** %13, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 3
  %108 = load float**, float*** %107, align 8
  %109 = getelementptr inbounds float*, float** %108, i64 1
  store float* %105, float** %109, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 3
  %112 = load float**, float*** %111, align 8
  %113 = getelementptr inbounds float*, float** %112, i64 2
  %114 = load float*, float** %113, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %123, 2
  %125 = call float* @av_fast_realloc(float* %114, i32* %118, i32 %124)
  store float* %125, float** %13, align 8
  %126 = load float*, float** %13, align 8
  %127 = icmp ne float* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %104
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = call i32 @AVERROR(i32 %129)
  store i32 %130, i32* %3, align 4
  br label %826

131:                                              ; preds = %104
  %132 = load float*, float** %13, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 3
  %135 = load float**, float*** %134, align 8
  %136 = getelementptr inbounds float*, float** %135, i64 2
  store float* %132, float** %136, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 3
  %139 = load float**, float*** %138, align 8
  %140 = getelementptr inbounds float*, float** %139, i64 3
  %141 = load float*, float** %140, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %150, 2
  %152 = call float* @av_fast_realloc(float* %141, i32* %145, i32 %151)
  store float* %152, float** %13, align 8
  %153 = load float*, float** %13, align 8
  %154 = icmp ne float* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %131
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = call i32 @AVERROR(i32 %156)
  store i32 %157, i32* %3, align 4
  br label %826

158:                                              ; preds = %131
  %159 = load float*, float** %13, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 3
  %162 = load float**, float*** %161, align 8
  %163 = getelementptr inbounds float*, float** %162, i64 3
  store float* %159, float** %163, align 8
  br label %164

164:                                              ; preds = %158, %42, %2
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 4
  br i1 %168, label %174, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %233

174:                                              ; preds = %169, %164
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 10
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  %178 = icmp ne %struct.TYPE_21__* %177, null
  br i1 %178, label %179, label %199

179:                                              ; preds = %174
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 10
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %184, %187
  br i1 %188, label %199, label %189

189:                                              ; preds = %179
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 10
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %199, label %229

199:                                              ; preds = %189, %179, %174
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 10
  %202 = call i32 @av_frame_free(%struct.TYPE_21__** %201)
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__* %203, i64 %206, i32 %209)
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 10
  store %struct.TYPE_21__* %210, %struct.TYPE_21__** %212, align 8
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 10
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %214, align 8
  store %struct.TYPE_21__* %215, %struct.TYPE_21__** %11, align 8
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 10
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %217, align 8
  %219 = icmp ne %struct.TYPE_21__* %218, null
  br i1 %219, label %224, label %220

220:                                              ; preds = %199
  %221 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  %222 = load i32, i32* @ENOMEM, align 4
  %223 = call i32 @AVERROR(i32 %222)
  store i32 %223, i32* %3, align 4
  br label %826

224:                                              ; preds = %199
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %228 = call i32 @clear_image(%struct.TYPE_20__* %225, %struct.TYPE_21__* %226, %struct.TYPE_22__* %227)
  br label %229

229:                                              ; preds = %224, %189
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %232 = call i32 @av_frame_copy_props(%struct.TYPE_21__* %230, %struct.TYPE_21__* %231)
  br label %233

233:                                              ; preds = %229, %169
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  store i32* %236, i32** %9, align 8
  store i32 0, i32* %12, align 4
  br label %237

237:                                              ; preds = %801, %233
  %238 = load i32, i32* %12, align 4
  %239 = icmp slt i32 %238, 4
  br i1 %239, label %240, label %804

240:                                              ; preds = %237
  %241 = load i32, i32* @VAR_VARS_NB, align 4
  %242 = zext i32 %241 to i64
  %243 = call i8* @llvm.stacksave()
  store i8* %243, i8** %14, align 8
  %244 = alloca double, i64 %242, align 16
  store i64 %242, i64* %15, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp eq i32 %247, 4
  br i1 %248, label %249, label %263

249:                                              ; preds = %240
  %250 = load float, float* @NAN, align 4
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 3
  %253 = load float**, float*** %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float*, float** %253, i64 %255
  %257 = load float*, float** %256, align 8
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %257, i64 %261
  store float %250, float* %262, align 4
  br label %263

263:                                              ; preds = %249, %240
  %264 = load i32*, i32** %9, align 8
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 13
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call %struct.TYPE_24__* @av_dict_get(i32* %264, i32 %271, i32* null, i32 0)
  store %struct.TYPE_24__* %272, %struct.TYPE_24__** %10, align 8
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %274 = icmp ne %struct.TYPE_24__* %273, null
  br i1 %274, label %275, label %280

275:                                              ; preds = %263
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %275, %263
  store i32 4, i32* %23, align 4
  br label %797

281:                                              ; preds = %275
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @av_sscanf(i32 %284, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float* %22)
  %286 = icmp ne i32 %285, 1
  br i1 %286, label %287, label %288

287:                                              ; preds = %281
  store i32 4, i32* %23, align 4
  br label %797

288:                                              ; preds = %281
  %289 = load float, float* %22, align 4
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 4
  %292 = load double, double* %291, align 8
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 5
  %295 = load double, double* %294, align 8
  %296 = call float @av_clipf(float %289, double %292, double %295)
  store float %296, float* %22, align 4
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp eq i32 %299, 4
  br i1 %300, label %301, label %315

301:                                              ; preds = %288
  %302 = load float, float* %22, align 4
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 3
  %305 = load float**, float*** %304, align 8
  %306 = load i32, i32* %12, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float*, float** %305, i64 %307
  %309 = load float*, float** %308, align 8
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %309, i64 %313
  store float %302, float* %314, align 4
  store i32 4, i32* %23, align 4
  br label %797

315:                                              ; preds = %288
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 4
  %318 = load double, double* %317, align 8
  %319 = load i64, i64* @VAR_MIN, align 8
  %320 = getelementptr inbounds double, double* %244, i64 %319
  store double %318, double* %320, align 8
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 5
  %323 = load double, double* %322, align 8
  %324 = load i64, i64* @VAR_MAX, align 8
  %325 = getelementptr inbounds double, double* %244, i64 %324
  store double %323, double* %325, align 8
  %326 = load float, float* %22, align 4
  %327 = fpext float %326 to double
  %328 = load i64, i64* @VAR_VAL, align 8
  %329 = getelementptr inbounds double, double* %244, i64 %328
  store double %327, double* %329, align 8
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 12
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %12, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @av_expr_eval(i32 %336, double* %244, i32* null)
  store i32 %337, i32* %20, align 4
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @AV_RN32(i32 %340)
  store i32 %341, i32* %21, align 4
  %342 = load i32, i32* %12, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %493

344:                                              ; preds = %315
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 7
  %347 = load i64, i64* %346, align 8
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp sge i64 %347, %350
  br i1 %351, label %357, label %352

352:                                              ; preds = %344
  %353 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = icmp eq i32 %355, 3
  br i1 %356, label %357, label %493

357:                                              ; preds = %352, %344
  %358 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %357
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp eq i32 %365, 1
  br i1 %366, label %367, label %370

367:                                              ; preds = %362, %357
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 7
  store i64 0, i64* %369, align 8
  br label %370

370:                                              ; preds = %367, %362
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = icmp eq i32 %373, 2
  br i1 %374, label %375, label %427

375:                                              ; preds = %370
  %376 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = sub nsw i64 %378, 1
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i32 0, i32 7
  store i64 %379, i64* %381, align 8
  store i32 0, i32* %16, align 4
  br label %382

382:                                              ; preds = %423, %375
  %383 = load i32, i32* %16, align 4
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = icmp slt i32 %383, %386
  br i1 %387, label %388, label %426

388:                                              ; preds = %382
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %390 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %389, i32 0, i32 2
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 0
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %16, align 4
  %395 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %396 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %395, i32 0, i32 3
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 0
  %399 = load i32, i32* %398, align 4
  %400 = mul nsw i32 %394, %399
  %401 = add nsw i32 %393, %400
  %402 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %403 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %402, i32 0, i32 2
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %16, align 4
  %408 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %409 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %408, i32 0, i32 3
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 0
  %412 = load i32, i32* %411, align 4
  %413 = mul nsw i32 %407, %412
  %414 = add nsw i32 %406, %413
  %415 = add nsw i32 %414, 4
  %416 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = sub nsw i64 %418, 1
  %420 = mul nsw i64 %419, 4
  %421 = trunc i64 %420 to i32
  %422 = call i32 @memmove(i32 %401, i32 %415, i32 %421)
  br label %423

423:                                              ; preds = %388
  %424 = load i32, i32* %16, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %16, align 4
  br label %382

426:                                              ; preds = %382
  br label %492

427:                                              ; preds = %370
  %428 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp eq i32 %430, 3
  br i1 %431, label %432, label %480

432:                                              ; preds = %427
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 7
  store i64 0, i64* %434, align 8
  store i32 0, i32* %16, align 4
  br label %435

435:                                              ; preds = %476, %432
  %436 = load i32, i32* %16, align 4
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  %440 = icmp slt i32 %436, %439
  br i1 %440, label %441, label %479

441:                                              ; preds = %435
  %442 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %443 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %442, i32 0, i32 2
  %444 = load i32*, i32** %443, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 0
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %16, align 4
  %448 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %449 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %448, i32 0, i32 3
  %450 = load i32*, i32** %449, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 0
  %452 = load i32, i32* %451, align 4
  %453 = mul nsw i32 %447, %452
  %454 = add nsw i32 %446, %453
  %455 = add nsw i32 %454, 4
  %456 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %457 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %456, i32 0, i32 2
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 0
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* %16, align 4
  %462 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %463 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %462, i32 0, i32 3
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 0
  %466 = load i32, i32* %465, align 4
  %467 = mul nsw i32 %461, %466
  %468 = add nsw i32 %460, %467
  %469 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %470 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = sub nsw i64 %471, 1
  %473 = mul nsw i64 %472, 4
  %474 = trunc i64 %473 to i32
  %475 = call i32 @memmove(i32 %455, i32 %468, i32 %474)
  br label %476

476:                                              ; preds = %441
  %477 = load i32, i32* %16, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %16, align 4
  br label %435

479:                                              ; preds = %435
  br label %491

480:                                              ; preds = %427
  %481 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %490

485:                                              ; preds = %480
  %486 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %487 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %488 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %489 = call i32 @clear_image(%struct.TYPE_20__* %486, %struct.TYPE_21__* %487, %struct.TYPE_22__* %488)
  br label %490

490:                                              ; preds = %485, %480
  br label %491

491:                                              ; preds = %490, %479
  br label %492

492:                                              ; preds = %491, %426
  br label %493

493:                                              ; preds = %492, %352, %315
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %495 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %494, i32 0, i32 7
  %496 = load i64, i64* %495, align 8
  %497 = trunc i64 %496 to i32
  store i32 %497, i32* %18, align 4
  %498 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = sub nsw i32 %500, 1
  %502 = sitofp i32 %501 to double
  %503 = load float, float* %22, align 4
  %504 = fpext float %503 to double
  %505 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %506 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %505, i32 0, i32 4
  %507 = load double, double* %506, align 8
  %508 = fsub double %504, %507
  %509 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %509, i32 0, i32 5
  %511 = load double, double* %510, align 8
  %512 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %513 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %512, i32 0, i32 4
  %514 = load double, double* %513, align 8
  %515 = fsub double %511, %514
  %516 = fdiv double %508, %515
  %517 = fsub double 1.000000e+00, %516
  %518 = fmul double %502, %517
  %519 = fptosi double %518 to i32
  store i32 %519, i32* %17, align 4
  %520 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %521 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %520, i32 0, i32 8
  %522 = load i32, i32* %521, align 8
  switch i32 %522, label %796 [
    i32 0, label %523
    i32 1, label %639
    i32 2, label %670
  ]

523:                                              ; preds = %493
  %524 = load i32, i32* %12, align 4
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %548

526:                                              ; preds = %523
  %527 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %528 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = icmp sgt i32 %529, 0
  br i1 %530, label %531, label %548

531:                                              ; preds = %526
  store i32 0, i32* %16, align 4
  br label %532

532:                                              ; preds = %544, %531
  %533 = load i32, i32* %16, align 4
  %534 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %535 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 8
  %537 = icmp slt i32 %533, %536
  br i1 %537, label %538, label %547

538:                                              ; preds = %532
  %539 = load i32, i32* %21, align 4
  %540 = load i32, i32* %18, align 4
  %541 = load i32, i32* %16, align 4
  %542 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %543 = call i32 @draw_dot(i32 %539, i32 %540, i32 %541, %struct.TYPE_21__* %542)
  br label %544

544:                                              ; preds = %538
  %545 = load i32, i32* %16, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %16, align 4
  br label %532

547:                                              ; preds = %532
  br label %548

548:                                              ; preds = %547, %526, %523
  %549 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %550 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %549, i32 0, i32 2
  %551 = load i32*, i32** %550, align 8
  %552 = getelementptr inbounds i32, i32* %551, i64 0
  %553 = load i32, i32* %552, align 4
  %554 = load i32, i32* %17, align 4
  %555 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %556 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %555, i32 0, i32 3
  %557 = load i32*, i32** %556, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 0
  %559 = load i32, i32* %558, align 4
  %560 = mul nsw i32 %554, %559
  %561 = add nsw i32 %553, %560
  %562 = load i32, i32* %18, align 4
  %563 = mul nsw i32 %562, 4
  %564 = add nsw i32 %561, %563
  %565 = call i32 @AV_RN32(i32 %564)
  store i32 %565, i32* %19, align 4
  %566 = load i32, i32* %17, align 4
  store i32 %566, i32* %16, align 4
  br label %567

567:                                              ; preds = %635, %548
  %568 = load i32, i32* %16, align 4
  %569 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %570 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 8
  %572 = icmp slt i32 %568, %571
  br i1 %572, label %573, label %638

573:                                              ; preds = %567
  %574 = load i32, i32* %19, align 4
  %575 = load i32, i32* %21, align 4
  %576 = icmp ne i32 %574, %575
  br i1 %576, label %577, label %597

577:                                              ; preds = %573
  %578 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %579 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %578, i32 0, i32 2
  %580 = load i32*, i32** %579, align 8
  %581 = getelementptr inbounds i32, i32* %580, i64 0
  %582 = load i32, i32* %581, align 4
  %583 = load i32, i32* %16, align 4
  %584 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %585 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %584, i32 0, i32 3
  %586 = load i32*, i32** %585, align 8
  %587 = getelementptr inbounds i32, i32* %586, i64 0
  %588 = load i32, i32* %587, align 4
  %589 = mul nsw i32 %583, %588
  %590 = add nsw i32 %582, %589
  %591 = load i32, i32* %18, align 4
  %592 = mul nsw i32 %591, 4
  %593 = add nsw i32 %590, %592
  %594 = call i32 @AV_RN32(i32 %593)
  %595 = load i32, i32* %19, align 4
  %596 = icmp ne i32 %594, %595
  br i1 %596, label %623, label %597

597:                                              ; preds = %577, %573
  %598 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %599 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %598, i32 0, i32 2
  %600 = load i32*, i32** %599, align 8
  %601 = getelementptr inbounds i32, i32* %600, i64 0
  %602 = load i32, i32* %601, align 4
  %603 = load i32, i32* %16, align 4
  %604 = add nsw i32 %603, 1
  %605 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %606 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 8
  %608 = sub nsw i32 %607, 1
  %609 = call i32 @FFMIN(i32 %604, i32 %608)
  %610 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %611 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %610, i32 0, i32 3
  %612 = load i32*, i32** %611, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 0
  %614 = load i32, i32* %613, align 4
  %615 = mul nsw i32 %609, %614
  %616 = add nsw i32 %602, %615
  %617 = load i32, i32* %18, align 4
  %618 = mul nsw i32 %617, 4
  %619 = add nsw i32 %616, %618
  %620 = call i32 @AV_RN32(i32 %619)
  %621 = load i32, i32* %19, align 4
  %622 = icmp ne i32 %620, %621
  br i1 %622, label %623, label %629

623:                                              ; preds = %597, %577
  %624 = load i32, i32* %20, align 4
  %625 = load i32, i32* %18, align 4
  %626 = load i32, i32* %16, align 4
  %627 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %628 = call i32 @draw_dot(i32 %624, i32 %625, i32 %626, %struct.TYPE_21__* %627)
  br label %638

629:                                              ; preds = %597
  %630 = load i32, i32* %20, align 4
  %631 = load i32, i32* %18, align 4
  %632 = load i32, i32* %16, align 4
  %633 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %634 = call i32 @draw_dot(i32 %630, i32 %631, i32 %632, %struct.TYPE_21__* %633)
  br label %635

635:                                              ; preds = %629
  %636 = load i32, i32* %16, align 4
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %16, align 4
  br label %567

638:                                              ; preds = %623, %567
  br label %796

639:                                              ; preds = %493
  %640 = load i32, i32* %12, align 4
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %664

642:                                              ; preds = %639
  %643 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %644 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %643, i32 0, i32 0
  %645 = load i32, i32* %644, align 8
  %646 = icmp sgt i32 %645, 0
  br i1 %646, label %647, label %664

647:                                              ; preds = %642
  store i32 0, i32* %16, align 4
  br label %648

648:                                              ; preds = %660, %647
  %649 = load i32, i32* %16, align 4
  %650 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %651 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %650, i32 0, i32 1
  %652 = load i32, i32* %651, align 8
  %653 = icmp slt i32 %649, %652
  br i1 %653, label %654, label %663

654:                                              ; preds = %648
  %655 = load i32, i32* %21, align 4
  %656 = load i32, i32* %18, align 4
  %657 = load i32, i32* %16, align 4
  %658 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %659 = call i32 @draw_dot(i32 %655, i32 %656, i32 %657, %struct.TYPE_21__* %658)
  br label %660

660:                                              ; preds = %654
  %661 = load i32, i32* %16, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %16, align 4
  br label %648

663:                                              ; preds = %648
  br label %664

664:                                              ; preds = %663, %642, %639
  %665 = load i32, i32* %20, align 4
  %666 = load i32, i32* %18, align 4
  %667 = load i32, i32* %17, align 4
  %668 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %669 = call i32 @draw_dot(i32 %665, i32 %666, i32 %667, %struct.TYPE_21__* %668)
  br label %796

670:                                              ; preds = %493
  %671 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %672 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %671, i32 0, i32 11
  %673 = load i32*, i32** %672, align 8
  %674 = load i32, i32* %12, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i32, i32* %673, i64 %675
  %677 = load i32, i32* %676, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %693

679:                                              ; preds = %670
  %680 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %681 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %680, i32 0, i32 11
  %682 = load i32*, i32** %681, align 8
  %683 = load i32, i32* %12, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i32, i32* %682, i64 %684
  store i32 0, i32* %685, align 4
  %686 = load i32, i32* %17, align 4
  %687 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %688 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %687, i32 0, i32 9
  %689 = load i32*, i32** %688, align 8
  %690 = load i32, i32* %12, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i32, i32* %689, i64 %691
  store i32 %686, i32* %692, align 4
  br label %693

693:                                              ; preds = %679, %670
  %694 = load i32, i32* %12, align 4
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %734

696:                                              ; preds = %693
  %697 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %698 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 8
  %700 = icmp sgt i32 %699, 0
  br i1 %700, label %701, label %734

701:                                              ; preds = %696
  store i32 0, i32* %16, align 4
  br label %702

702:                                              ; preds = %712, %701
  %703 = load i32, i32* %16, align 4
  %704 = load i32, i32* %17, align 4
  %705 = icmp slt i32 %703, %704
  br i1 %705, label %706, label %715

706:                                              ; preds = %702
  %707 = load i32, i32* %21, align 4
  %708 = load i32, i32* %18, align 4
  %709 = load i32, i32* %16, align 4
  %710 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %711 = call i32 @draw_dot(i32 %707, i32 %708, i32 %709, %struct.TYPE_21__* %710)
  br label %712

712:                                              ; preds = %706
  %713 = load i32, i32* %16, align 4
  %714 = add nsw i32 %713, 1
  store i32 %714, i32* %16, align 4
  br label %702

715:                                              ; preds = %702
  %716 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %717 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %716, i32 0, i32 1
  %718 = load i32, i32* %717, align 8
  %719 = sub nsw i32 %718, 1
  store i32 %719, i32* %16, align 4
  br label %720

720:                                              ; preds = %730, %715
  %721 = load i32, i32* %16, align 4
  %722 = load i32, i32* %17, align 4
  %723 = icmp sgt i32 %721, %722
  br i1 %723, label %724, label %733

724:                                              ; preds = %720
  %725 = load i32, i32* %21, align 4
  %726 = load i32, i32* %18, align 4
  %727 = load i32, i32* %16, align 4
  %728 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %729 = call i32 @draw_dot(i32 %725, i32 %726, i32 %727, %struct.TYPE_21__* %728)
  br label %730

730:                                              ; preds = %724
  %731 = load i32, i32* %16, align 4
  %732 = add nsw i32 %731, -1
  store i32 %732, i32* %16, align 4
  br label %720

733:                                              ; preds = %720
  br label %734

734:                                              ; preds = %733, %696, %693
  %735 = load i32, i32* %17, align 4
  %736 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %737 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %736, i32 0, i32 9
  %738 = load i32*, i32** %737, align 8
  %739 = load i32, i32* %12, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i32, i32* %738, i64 %740
  %742 = load i32, i32* %741, align 4
  %743 = icmp sle i32 %735, %742
  br i1 %743, label %744, label %766

744:                                              ; preds = %734
  %745 = load i32, i32* %17, align 4
  store i32 %745, i32* %16, align 4
  br label %746

746:                                              ; preds = %762, %744
  %747 = load i32, i32* %16, align 4
  %748 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %749 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %748, i32 0, i32 9
  %750 = load i32*, i32** %749, align 8
  %751 = load i32, i32* %12, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i32, i32* %750, i64 %752
  %754 = load i32, i32* %753, align 4
  %755 = icmp sle i32 %747, %754
  br i1 %755, label %756, label %765

756:                                              ; preds = %746
  %757 = load i32, i32* %20, align 4
  %758 = load i32, i32* %18, align 4
  %759 = load i32, i32* %16, align 4
  %760 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %761 = call i32 @draw_dot(i32 %757, i32 %758, i32 %759, %struct.TYPE_21__* %760)
  br label %762

762:                                              ; preds = %756
  %763 = load i32, i32* %16, align 4
  %764 = add nsw i32 %763, 1
  store i32 %764, i32* %16, align 4
  br label %746

765:                                              ; preds = %746
  br label %788

766:                                              ; preds = %734
  %767 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %768 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %767, i32 0, i32 9
  %769 = load i32*, i32** %768, align 8
  %770 = load i32, i32* %12, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i32, i32* %769, i64 %771
  %773 = load i32, i32* %772, align 4
  store i32 %773, i32* %16, align 4
  br label %774

774:                                              ; preds = %784, %766
  %775 = load i32, i32* %16, align 4
  %776 = load i32, i32* %17, align 4
  %777 = icmp sle i32 %775, %776
  br i1 %777, label %778, label %787

778:                                              ; preds = %774
  %779 = load i32, i32* %20, align 4
  %780 = load i32, i32* %18, align 4
  %781 = load i32, i32* %16, align 4
  %782 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %783 = call i32 @draw_dot(i32 %779, i32 %780, i32 %781, %struct.TYPE_21__* %782)
  br label %784

784:                                              ; preds = %778
  %785 = load i32, i32* %16, align 4
  %786 = add nsw i32 %785, 1
  store i32 %786, i32* %16, align 4
  br label %774

787:                                              ; preds = %774
  br label %788

788:                                              ; preds = %787, %765
  %789 = load i32, i32* %17, align 4
  %790 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %791 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %790, i32 0, i32 9
  %792 = load i32*, i32** %791, align 8
  %793 = load i32, i32* %12, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds i32, i32* %792, i64 %794
  store i32 %789, i32* %795, align 4
  br label %796

796:                                              ; preds = %493, %788, %664, %638
  store i32 0, i32* %23, align 4
  br label %797

797:                                              ; preds = %796, %301, %287, %280
  %798 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %798)
  %799 = load i32, i32* %23, align 4
  switch i32 %799, label %828 [
    i32 0, label %800
    i32 4, label %801
  ]

800:                                              ; preds = %797
  br label %801

801:                                              ; preds = %800, %797
  %802 = load i32, i32* %12, align 4
  %803 = add nsw i32 %802, 1
  store i32 %803, i32* %12, align 4
  br label %237

804:                                              ; preds = %237
  %805 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %806 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %805, i32 0, i32 1
  %807 = load i32, i32* %806, align 4
  %808 = add nsw i32 %807, 1
  store i32 %808, i32* %806, align 4
  %809 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %810 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %809, i32 0, i32 7
  %811 = load i64, i64* %810, align 8
  %812 = add nsw i64 %811, 1
  store i64 %812, i64* %810, align 8
  %813 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  %814 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %815 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %814, i32 0, i32 0
  %816 = load i32, i32* %815, align 8
  %817 = icmp eq i32 %816, 4
  br i1 %817, label %818, label %819

818:                                              ; preds = %804
  store i32 0, i32* %3, align 4
  br label %826

819:                                              ; preds = %804
  %820 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %821 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %822 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %821, i32 0, i32 10
  %823 = load %struct.TYPE_21__*, %struct.TYPE_21__** %822, align 8
  %824 = call i32 @av_frame_clone(%struct.TYPE_21__* %823)
  %825 = call i32 @ff_filter_frame(%struct.TYPE_22__* %820, i32 %824)
  store i32 %825, i32* %3, align 4
  br label %826

826:                                              ; preds = %819, %818, %220, %155, %128, %101, %74
  %827 = load i32, i32* %3, align 4
  ret i32 %827

828:                                              ; preds = %797
  unreachable
}

declare dso_local float* @av_fast_realloc(float*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #1

declare dso_local %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @clear_image(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_24__* @av_dict_get(i32*, i32, i32*, i32) #1

declare dso_local i32 @av_sscanf(i32, i8*, float*) #1

declare dso_local float @av_clipf(float, double, double) #1

declare dso_local i32 @av_expr_eval(i32, double*, i32*) #1

declare dso_local i32 @AV_RN32(i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @draw_dot(i32, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ff_filter_frame(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @av_frame_clone(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
