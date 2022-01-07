; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_ff_h264_slice_context_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_ff_h264_slice_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32**, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32**, i32, %struct.TYPE_8__*, i32, i32 }

@PART_NOT_AVAILABLE = common dso_local global i32 0, align 4
@scan8 = common dso_local global i32* null, align 8
@CONFIG_ERROR_RESILIENCE = common dso_local global i64 0, align 8
@h264_er_decode_mb = common dso_local global i32 0, align 4
@fail = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h264_slice_context_init(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 2, %25
  %27 = add nsw i32 %26, 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 1
  %33 = mul nsw i32 %27, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = mul nsw i32 %36, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 2, %43
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* @PART_NOT_AVAILABLE, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** @scan8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 13
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  store i32 %46, i32* %57, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** @scan8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  store i32 %46, i32* %68, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32*, i32** @scan8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  store i32 %46, i32* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = getelementptr inbounds i32*, i32** %82, i64 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32*, i32** @scan8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 13
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %84, i64 %89
  store i32 %46, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32**, i32*** %92, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** @scan8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 7
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  store i32 %46, i32* %101, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32**, i32*** %103, align 8
  %105 = getelementptr inbounds i32*, i32** %104, i64 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32*, i32** @scan8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 5
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32 %46, i32* %112, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = icmp ne %struct.TYPE_7__* %113, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %2
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = call i32 @memset(%struct.TYPE_9__* %119, i32 0, i32 72)
  br label %345

121:                                              ; preds = %2
  %122 = load i64, i64* @CONFIG_ERROR_RESILIENCE, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %344

124:                                              ; preds = %121
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 12
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @h264_er_decode_mb, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 11
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 10
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %160, 2
  %162 = add nsw i32 %161, 1
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 4
  %177 = trunc i64 %176 to i32
  %178 = load i32, i32* @fail, align 4
  %179 = call i32 @FF_ALLOCZ_OR_GOTO(i32 %167, i32* %170, i32 %177, i32 %178)
  store i32 0, i32* %12, align 4
  br label %180

180:                                              ; preds = %217, %124
  %181 = load i32, i32* %12, align 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %220

186:                                              ; preds = %180
  store i32 0, i32* %11, align 4
  br label %187

187:                                              ; preds = %213, %186
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %216

193:                                              ; preds = %187
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %195, %198
  %200 = add nsw i32 %194, %199
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 6
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = mul nsw i32 %205, %208
  %210 = add nsw i32 %204, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %203, i64 %211
  store i32 %200, i32* %212, align 4
  br label %213

213:                                              ; preds = %193
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %187

216:                                              ; preds = %187
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %12, align 4
  br label %180

220:                                              ; preds = %180
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sub nsw i32 %223, 1
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 %224, %227
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %228, %231
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 6
  %235 = load i32*, i32** %234, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = mul nsw i32 %238, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %235, i64 %243
  store i32 %232, i32* %244, align 4
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 7
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = mul i64 %252, 4
  %254 = trunc i64 %253 to i32
  %255 = load i32, i32* @fail, align 4
  %256 = call i32 @FF_ALLOCZ_OR_GOTO(i32 %247, i32* %250, i32 %254, i32 %255)
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 9
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = mul nsw i32 %265, %268
  %270 = sext i32 %269 to i64
  %271 = mul i64 %270, 17
  %272 = trunc i64 %271 to i32
  %273 = load i32, i32* @fail, align 4
  %274 = call i32 @FF_ALLOC_OR_GOTO(i32 %259, i32 %262, i32 %272, i32 %273)
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = mul i64 %282, 4
  %284 = trunc i64 %283 to i32
  %285 = load i32, i32* @fail, align 4
  %286 = call i32 @FF_ALLOCZ_OR_GOTO(i32 %277, i32* %280, i32 %284, i32 %285)
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = mul nsw i32 %292, 2
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %289, i64 %294
  %296 = getelementptr inbounds i32, i32* %295, i64 2
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 8
  %299 = load i32**, i32*** %298, align 8
  %300 = getelementptr inbounds i32*, i32** %299, i64 0
  store i32* %296, i32** %300, align 8
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %306, i64 %310
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 8
  %315 = load i32**, i32*** %314, align 8
  %316 = getelementptr inbounds i32*, i32** %315, i64 1
  store i32* %312, i32** %316, align 8
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 8
  %319 = load i32**, i32*** %318, align 8
  %320 = getelementptr inbounds i32*, i32** %319, i64 1
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 8
  %327 = load i32**, i32*** %326, align 8
  %328 = getelementptr inbounds i32*, i32** %327, i64 2
  store i32* %324, i32** %328, align 8
  store i32 0, i32* %13, align 4
  br label %329

329:                                              ; preds = %340, %220
  %330 = load i32, i32* %13, align 4
  %331 = load i32, i32* %10, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %343

333:                                              ; preds = %329
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  store i32 1024, i32* %339, align 4
  br label %340

340:                                              ; preds = %333
  %341 = load i32, i32* %13, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %13, align 4
  br label %329

343:                                              ; preds = %329
  br label %344

344:                                              ; preds = %343, %121
  br label %345

345:                                              ; preds = %344, %118
  store i32 0, i32* %3, align 4
  br label %349

346:                                              ; No predecessors!
  %347 = load i32, i32* @ENOMEM, align 4
  %348 = call i32 @AVERROR(i32 %347)
  store i32 %348, i32* %3, align 4
  br label %349

349:                                              ; preds = %346, %345
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @FF_ALLOCZ_OR_GOTO(i32, i32*, i32, i32) #1

declare dso_local i32 @FF_ALLOC_OR_GOTO(i32, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
