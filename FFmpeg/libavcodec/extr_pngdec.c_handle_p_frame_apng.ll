; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_handle_p_frame_apng.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_handle_p_frame_apng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i32, i32*, %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64** }
%struct.TYPE_13__ = type { i64** }

@APNG_BLEND_OP_OVER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Blending with pixel format %s\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@APNG_DISPOSE_OP_PREVIOUS = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@APNG_DISPOSE_OP_BACKGROUND = common dso_local global i64 0, align 8
@APNG_BLEND_OP_SOURCE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Alpha blending palette samples\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @handle_p_frame_apng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_p_frame_apng(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [10 x i64], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @APNG_BLEND_OP_OVER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %3
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 128
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 130
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 129
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @av_get_pix_fmt_name(i32 %43)
  %45 = call i32 (%struct.TYPE_14__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_14__* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %46, i32* %4, align 4
  br label %496

47:                                               ; preds = %34, %29, %24, %3
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64* @av_malloc_array(i32 %50, i32 %53)
  store i64* %54, i64** %10, align 8
  %55 = load i64*, i64** %10, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %4, align 4
  br label %496

60:                                               ; preds = %47
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @APNG_DISPOSE_OP_PREVIOUS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %159

66:                                               ; preds = %60
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 15
  %69 = load i32, i32* @INT_MAX, align 4
  %70 = call i32 @ff_thread_await_progress(%struct.TYPE_15__* %68, i32 %69, i32 0)
  %71 = load i64*, i64** %10, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 15
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64**, i64*** %76, align 8
  %78 = getelementptr inbounds i64*, i64** %77, i64 0
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %82, %85
  %87 = call i32 @memcpy(i64* %71, i64* %79, i32 %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @APNG_DISPOSE_OP_BACKGROUND, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %137

93:                                               ; preds = %66
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %133, %93
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %101, %104
  %106 = icmp ult i64 %98, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %97
  %108 = load i64*, i64** %10, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %9, align 8
  %114 = mul i64 %112, %113
  %115 = getelementptr inbounds i64, i64* %108, i64 %114
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %115, i64 %123
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %127, %130
  %132 = call i32 @memset(i64* %124, i32 0, i32 %131)
  br label %133

133:                                              ; preds = %107
  %134 = load i64, i64* %9, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %9, align 8
  br label %97

136:                                              ; preds = %97
  br label %137

137:                                              ; preds = %136, %66
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 14
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64**, i64*** %142, align 8
  %144 = getelementptr inbounds i64*, i64** %143, i64 0
  %145 = load i64*, i64** %144, align 8
  %146 = load i64*, i64** %10, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %149, %152
  %154 = call i32 @memcpy(i64* %145, i64* %146, i32 %153)
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 14
  %157 = load i32, i32* @INT_MAX, align 4
  %158 = call i32 @ff_thread_report_progress(%struct.TYPE_15__* %156, i32 %157, i32 0)
  br label %181

159:                                              ; preds = %60
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 14
  %162 = load i32, i32* @INT_MAX, align 4
  %163 = call i32 @ff_thread_await_progress(%struct.TYPE_15__* %161, i32 %162, i32 0)
  %164 = load i64*, i64** %10, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 14
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64**, i64*** %169, align 8
  %171 = getelementptr inbounds i64*, i64** %170, i64 0
  %172 = load i64*, i64** %171, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %175, %178
  %180 = call i32 @memcpy(i64* %164, i64* %172, i32 %179)
  br label %181

181:                                              ; preds = %159, %137
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @APNG_BLEND_OP_SOURCE, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %239

187:                                              ; preds = %181
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 9
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %9, align 8
  br label %191

191:                                              ; preds = %235, %187
  %192 = load i64, i64* %9, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 9
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 10
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %195, %198
  %200 = icmp ult i64 %192, %199
  br i1 %200, label %201, label %238

201:                                              ; preds = %191
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* %9, align 8
  %207 = mul i64 %205, %206
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 11
  %214 = load i64, i64* %213, align 8
  %215 = mul i64 %211, %214
  %216 = add i64 %207, %215
  store i64 %216, i64* %11, align 8
  %217 = load i64*, i64** %10, align 8
  %218 = load i64, i64* %11, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i64**, i64*** %221, align 8
  %223 = getelementptr inbounds i64*, i64** %222, i64 0
  %224 = load i64*, i64** %223, align 8
  %225 = load i64, i64* %11, align 8
  %226 = getelementptr inbounds i64, i64* %224, i64 %225
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 12
  %232 = load i32, i32* %231, align 8
  %233 = mul nsw i32 %229, %232
  %234 = call i32 @memcpy(i64* %219, i64* %226, i32 %233)
  br label %235

235:                                              ; preds = %201
  %236 = load i64, i64* %9, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %9, align 8
  br label %191

238:                                              ; preds = %191
  br label %479

239:                                              ; preds = %181
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 9
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %9, align 8
  br label %243

243:                                              ; preds = %475, %239
  %244 = load i64, i64* %9, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 9
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 10
  %250 = load i64, i64* %249, align 8
  %251 = add i64 %247, %250
  %252 = icmp ult i64 %244, %251
  br i1 %252, label %253, label %478

253:                                              ; preds = %243
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load i64**, i64*** %255, align 8
  %257 = getelementptr inbounds i64*, i64** %256, i64 0
  %258 = load i64*, i64** %257, align 8
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = sext i32 %261 to i64
  %263 = load i64, i64* %9, align 8
  %264 = mul i64 %262, %263
  %265 = getelementptr inbounds i64, i64* %258, i64 %264
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 11
  %272 = load i64, i64* %271, align 8
  %273 = mul i64 %269, %272
  %274 = getelementptr inbounds i64, i64* %265, i64 %273
  store i64* %274, i64** %12, align 8
  %275 = load i64*, i64** %10, align 8
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* %9, align 8
  %281 = mul i64 %279, %280
  %282 = getelementptr inbounds i64, i64* %275, i64 %281
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 11
  %289 = load i64, i64* %288, align 8
  %290 = mul i64 %286, %289
  %291 = getelementptr inbounds i64, i64* %282, i64 %290
  store i64* %291, i64** %13, align 8
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 11
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %8, align 8
  br label %295

295:                                              ; preds = %459, %253
  %296 = load i64, i64* %8, align 8
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 11
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 12
  %302 = load i32, i32* %301, align 8
  %303 = sext i32 %302 to i64
  %304 = add i64 %299, %303
  %305 = icmp ult i64 %296, %304
  br i1 %305, label %306, label %474

306:                                              ; preds = %295
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  switch i32 %309, label %345 [
    i32 128, label %310
    i32 130, label %317
    i32 129, label %324
  ]

310:                                              ; preds = %306
  %311 = load i64*, i64** %12, align 8
  %312 = getelementptr inbounds i64, i64* %311, i64 3
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %15, align 8
  %314 = load i64*, i64** %13, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 3
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %16, align 8
  br label %345

317:                                              ; preds = %306
  %318 = load i64*, i64** %12, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 1
  %320 = load i64, i64* %319, align 8
  store i64 %320, i64* %15, align 8
  %321 = load i64*, i64** %13, align 8
  %322 = getelementptr inbounds i64, i64* %321, i64 1
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %16, align 8
  br label %345

324:                                              ; preds = %306
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 13
  %327 = load i32*, i32** %326, align 8
  %328 = load i64*, i64** %12, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 0
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds i32, i32* %327, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = ashr i32 %332, 24
  %334 = sext i32 %333 to i64
  store i64 %334, i64* %15, align 8
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 13
  %337 = load i32*, i32** %336, align 8
  %338 = load i64*, i64** %13, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 0
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds i32, i32* %337, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = ashr i32 %342, 24
  %344 = sext i32 %343 to i64
  store i64 %344, i64* %16, align 8
  br label %345

345:                                              ; preds = %306, %324, %317, %310
  %346 = load i64, i64* %15, align 8
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %345
  br label %459

349:                                              ; preds = %345
  %350 = load i64, i64* %15, align 8
  %351 = icmp eq i64 %350, 255
  br i1 %351, label %352, label %359

352:                                              ; preds = %349
  %353 = load i64*, i64** %13, align 8
  %354 = load i64*, i64** %12, align 8
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @memcpy(i64* %353, i64* %354, i32 %357)
  br label %459

359:                                              ; preds = %349
  %360 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = icmp eq i32 %362, 129
  br i1 %363, label %364, label %372

364:                                              ; preds = %359
  %365 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %366 = call i32 (%struct.TYPE_14__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_14__* %365, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %367 = load i64*, i64** %12, align 8
  %368 = getelementptr inbounds i64, i64* %367, i64 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64*, i64** %13, align 8
  %371 = getelementptr inbounds i64, i64* %370, i64 0
  store i64 %369, i64* %371, align 8
  br label %459

372:                                              ; preds = %359
  %373 = load i64, i64* %15, align 8
  %374 = load i64, i64* %15, align 8
  %375 = sub i64 255, %374
  %376 = load i64, i64* %16, align 8
  %377 = mul i64 %375, %376
  %378 = call i64 @FAST_DIV255(i64 %377)
  %379 = add i64 %373, %378
  store i64 %379, i64* %17, align 8
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 6
  %382 = load i32, i32* %381, align 8
  %383 = icmp sle i32 %382, 10
  %384 = zext i1 %383 to i32
  %385 = call i32 @av_assert0(i32 %384)
  store i64 0, i64* %14, align 8
  br label %386

386:                                              ; preds = %446, %372
  %387 = load i64, i64* %14, align 8
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 8
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = icmp ult i64 %387, %392
  br i1 %393, label %394, label %449

394:                                              ; preds = %386
  %395 = load i64, i64* %17, align 8
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %394
  %398 = load i64, i64* %14, align 8
  %399 = getelementptr inbounds [10 x i64], [10 x i64]* %18, i64 0, i64 %398
  store i64 0, i64* %399, align 8
  br label %445

400:                                              ; preds = %394
  %401 = load i64, i64* %16, align 8
  %402 = icmp eq i64 %401, 255
  br i1 %402, label %403, label %421

403:                                              ; preds = %400
  %404 = load i64, i64* %15, align 8
  %405 = load i64*, i64** %12, align 8
  %406 = load i64, i64* %14, align 8
  %407 = getelementptr inbounds i64, i64* %405, i64 %406
  %408 = load i64, i64* %407, align 8
  %409 = mul i64 %404, %408
  %410 = load i64, i64* %15, align 8
  %411 = sub i64 255, %410
  %412 = load i64*, i64** %13, align 8
  %413 = load i64, i64* %14, align 8
  %414 = getelementptr inbounds i64, i64* %412, i64 %413
  %415 = load i64, i64* %414, align 8
  %416 = mul i64 %411, %415
  %417 = add i64 %409, %416
  %418 = call i64 @FAST_DIV255(i64 %417)
  %419 = load i64, i64* %14, align 8
  %420 = getelementptr inbounds [10 x i64], [10 x i64]* %18, i64 0, i64 %419
  store i64 %418, i64* %420, align 8
  br label %444

421:                                              ; preds = %400
  %422 = load i64, i64* %15, align 8
  %423 = mul i64 255, %422
  %424 = load i64*, i64** %12, align 8
  %425 = load i64, i64* %14, align 8
  %426 = getelementptr inbounds i64, i64* %424, i64 %425
  %427 = load i64, i64* %426, align 8
  %428 = mul i64 %423, %427
  %429 = load i64, i64* %15, align 8
  %430 = sub i64 255, %429
  %431 = load i64, i64* %16, align 8
  %432 = mul i64 %430, %431
  %433 = load i64*, i64** %13, align 8
  %434 = load i64, i64* %14, align 8
  %435 = getelementptr inbounds i64, i64* %433, i64 %434
  %436 = load i64, i64* %435, align 8
  %437 = mul i64 %432, %436
  %438 = add i64 %428, %437
  %439 = load i64, i64* %17, align 8
  %440 = mul i64 255, %439
  %441 = udiv i64 %438, %440
  %442 = load i64, i64* %14, align 8
  %443 = getelementptr inbounds [10 x i64], [10 x i64]* %18, i64 0, i64 %442
  store i64 %441, i64* %443, align 8
  br label %444

444:                                              ; preds = %421, %403
  br label %445

445:                                              ; preds = %444, %397
  br label %446

446:                                              ; preds = %445
  %447 = load i64, i64* %14, align 8
  %448 = add i64 %447, 1
  store i64 %448, i64* %14, align 8
  br label %386

449:                                              ; preds = %386
  %450 = load i64, i64* %17, align 8
  %451 = load i64, i64* %14, align 8
  %452 = getelementptr inbounds [10 x i64], [10 x i64]* %18, i64 0, i64 %451
  store i64 %450, i64* %452, align 8
  %453 = load i64*, i64** %13, align 8
  %454 = getelementptr inbounds [10 x i64], [10 x i64]* %18, i64 0, i64 0
  %455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 6
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @memcpy(i64* %453, i64* %454, i32 %457)
  br label %459

459:                                              ; preds = %449, %364, %352, %348
  %460 = load i64, i64* %8, align 8
  %461 = add i64 %460, 1
  store i64 %461, i64* %8, align 8
  %462 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %462, i32 0, i32 6
  %464 = load i32, i32* %463, align 8
  %465 = load i64*, i64** %12, align 8
  %466 = sext i32 %464 to i64
  %467 = getelementptr inbounds i64, i64* %465, i64 %466
  store i64* %467, i64** %12, align 8
  %468 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 6
  %470 = load i32, i32* %469, align 8
  %471 = load i64*, i64** %13, align 8
  %472 = sext i32 %470 to i64
  %473 = getelementptr inbounds i64, i64* %471, i64 %472
  store i64* %473, i64** %13, align 8
  br label %295

474:                                              ; preds = %295
  br label %475

475:                                              ; preds = %474
  %476 = load i64, i64* %9, align 8
  %477 = add i64 %476, 1
  store i64 %477, i64* %9, align 8
  br label %243

478:                                              ; preds = %243
  br label %479

479:                                              ; preds = %478, %238
  %480 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 0
  %482 = load i64**, i64*** %481, align 8
  %483 = getelementptr inbounds i64*, i64** %482, i64 0
  %484 = load i64*, i64** %483, align 8
  %485 = load i64*, i64** %10, align 8
  %486 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 4
  %492 = mul nsw i32 %488, %491
  %493 = call i32 @memcpy(i64* %484, i64* %485, i32 %492)
  %494 = load i64*, i64** %10, align 8
  %495 = call i32 @av_free(i64* %494)
  store i32 0, i32* %4, align 4
  br label %496

496:                                              ; preds = %479, %57, %39
  %497 = load i32, i32* %4, align 4
  ret i32 %497
}

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i64* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_thread_await_progress(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @ff_thread_report_progress(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @FAST_DIV255(i64) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
