; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9.c_update_block_buffers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9.c_update_block_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32**, i32*, i8**, i8*, i8* }

@CUR_FRAME = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @update_block_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_block_buffers(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 10
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 0
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %9, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i64, i64* @CUR_FRAME, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %33, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %431

44:                                               ; preds = %30, %25, %1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @av_free(i8* %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @av_free(i8* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = ashr i32 4096, %59
  store i32 %60, i32* %6, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = ashr i32 256, %67
  store i32 %68, i32* %7, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i64, i64* @CUR_FRAME, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %198

78:                                               ; preds = %44
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  store i32 %85, i32* %10, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = call i8* @av_malloc_array(i32 %92, i32 4)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 2, %96
  %98 = add nsw i32 4096, %97
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = add i64 %102, 256
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 2, %104
  %106 = sext i32 %105 to i64
  %107 = add i64 %103, %106
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %107, %109
  %111 = trunc i64 %110 to i32
  %112 = call i8* @av_mallocz(i32 %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %78
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119, %78
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = call i32 @AVERROR(i32 %125)
  store i32 %126, i32* %2, align 4
  br label %431

127:                                              ; preds = %119
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = mul nsw i32 %131, 64
  %133 = mul nsw i32 %132, 64
  %134 = load i32, i32* %8, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr i8, i8* %130, i64 %136
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  store i8* %137, i8** %141, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i8**, i8*** %143, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %6, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %8, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr i8, i8* %146, i64 %152
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 1
  store i8* %153, i8** %157, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 1
  %162 = load i8*, i8** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %6, align 4
  %165 = mul nsw i32 %163, %164
  %166 = load i32, i32* %8, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr i8, i8* %162, i64 %168
  %170 = bitcast i8* %169 to i32*
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  store i32* %170, i32** %172, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = mul nsw i32 256, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i32**, i32*** %181, align 8
  %183 = getelementptr inbounds i32*, i32** %182, i64 0
  store i32* %179, i32** %183, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32**, i32*** %185, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %10, align 4
  %191 = mul nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32**, i32*** %195, align 8
  %197 = getelementptr inbounds i32*, i32** %196, i64 1
  store i32* %193, i32** %197, align 8
  br label %420

198:                                              ; preds = %44
  store i32 1, i32* %4, align 4
  br label %199

199:                                              ; preds = %245, %198
  %200 = load i32, i32* %4, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %248

205:                                              ; preds = %199
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 10
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 4
  %213 = load i8*, i8** %212, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %244

215:                                              ; preds = %205
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 10
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 3
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %244

225:                                              ; preds = %215
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 10
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 4
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @av_free(i8* %233)
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 10
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = load i32, i32* %4, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @av_free(i8* %242)
  br label %244

244:                                              ; preds = %225, %215, %205
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %4, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %4, align 4
  br label %199

248:                                              ; preds = %199
  store i32 0, i32* %4, align 4
  br label %249

249:                                              ; preds = %416, %248
  %250 = load i32, i32* %4, align 4
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 8
  %254 = icmp slt i32 %250, %253
  br i1 %254, label %255, label %419

255:                                              ; preds = %249
  %256 = call i8* @av_malloc(i32 4)
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 10
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %258, align 8
  %260 = load i32, i32* %4, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 4
  store i8* %256, i8** %263, align 8
  %264 = load i32, i32* %6, align 4
  %265 = mul nsw i32 2, %264
  %266 = add nsw i32 4096, %265
  %267 = load i32, i32* %8, align 4
  %268 = mul nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = mul i64 %269, 4
  %271 = add i64 %270, 256
  %272 = load i32, i32* %7, align 4
  %273 = mul nsw i32 2, %272
  %274 = sext i32 %273 to i64
  %275 = add i64 %271, %274
  %276 = trunc i64 %275 to i32
  %277 = call i8* @av_mallocz(i32 %276)
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 10
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %279, align 8
  %281 = load i32, i32* %4, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 3
  store i8* %277, i8** %284, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 10
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %286, align 8
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 4
  %292 = load i8*, i8** %291, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %304

294:                                              ; preds = %255
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 10
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %296, align 8
  %298 = load i32, i32* %4, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 3
  %302 = load i8*, i8** %301, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %307, label %304

304:                                              ; preds = %294, %255
  %305 = load i32, i32* @ENOMEM, align 4
  %306 = call i32 @AVERROR(i32 %305)
  store i32 %306, i32* %2, align 4
  br label %431

307:                                              ; preds = %294
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 10
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %309, align 8
  %311 = load i32, i32* %4, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 3
  %315 = load i8*, i8** %314, align 8
  %316 = load i32, i32* %8, align 4
  %317 = mul nsw i32 4096, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr i8, i8* %315, i64 %318
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 10
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %321, align 8
  %323 = load i32, i32* %4, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 2
  %327 = load i8**, i8*** %326, align 8
  %328 = getelementptr inbounds i8*, i8** %327, i64 0
  store i8* %319, i8** %328, align 8
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 10
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %330, align 8
  %332 = load i32, i32* %4, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 2
  %336 = load i8**, i8*** %335, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 0
  %338 = load i8*, i8** %337, align 8
  %339 = load i32, i32* %6, align 4
  %340 = load i32, i32* %8, align 4
  %341 = mul nsw i32 %339, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr i8, i8* %338, i64 %342
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 10
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %345, align 8
  %347 = load i32, i32* %4, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 2
  %351 = load i8**, i8*** %350, align 8
  %352 = getelementptr inbounds i8*, i8** %351, i64 1
  store i8* %343, i8** %352, align 8
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 10
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %354, align 8
  %356 = load i32, i32* %4, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 2
  %360 = load i8**, i8*** %359, align 8
  %361 = getelementptr inbounds i8*, i8** %360, i64 1
  %362 = load i8*, i8** %361, align 8
  %363 = load i32, i32* %6, align 4
  %364 = load i32, i32* %8, align 4
  %365 = mul nsw i32 %363, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr i8, i8* %362, i64 %366
  %368 = bitcast i8* %367 to i32*
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 10
  %371 = load %struct.TYPE_9__*, %struct.TYPE_9__** %370, align 8
  %372 = load i32, i32* %4, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 1
  store i32* %368, i32** %375, align 8
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 10
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %377, align 8
  %379 = load i32, i32* %4, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 256
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 10
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %386, align 8
  %388 = load i32, i32* %4, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 0
  %392 = load i32**, i32*** %391, align 8
  %393 = getelementptr inbounds i32*, i32** %392, i64 0
  store i32* %384, i32** %393, align 8
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 10
  %396 = load %struct.TYPE_9__*, %struct.TYPE_9__** %395, align 8
  %397 = load i32, i32* %4, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 0
  %401 = load i32**, i32*** %400, align 8
  %402 = getelementptr inbounds i32*, i32** %401, i64 0
  %403 = load i32*, i32** %402, align 8
  %404 = load i32, i32* %7, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  %407 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 10
  %409 = load %struct.TYPE_9__*, %struct.TYPE_9__** %408, align 8
  %410 = load i32, i32* %4, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 0
  %414 = load i32**, i32*** %413, align 8
  %415 = getelementptr inbounds i32*, i32** %414, i64 1
  store i32* %406, i32** %415, align 8
  br label %416

416:                                              ; preds = %307
  %417 = load i32, i32* %4, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %4, align 4
  br label %249

419:                                              ; preds = %249
  br label %420

420:                                              ; preds = %419, %127
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 9
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_7__*, %struct.TYPE_7__** %423, align 8
  %425 = load i64, i64* @CUR_FRAME, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %429, i32 0, i32 1
  store i64 %428, i64* %430, align 8
  store i32 0, i32* %2, align 4
  br label %431

431:                                              ; preds = %420, %304, %124, %43
  %432 = load i32, i32* %2, align 4
  ret i32 %432
}

declare dso_local i32 @av_free(i8*) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
