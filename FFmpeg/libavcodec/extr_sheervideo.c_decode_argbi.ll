; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_argbi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_argbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i32* }

@__const.decode_argbi.pred = private unnamed_addr constant [4 x i32] [i32 -128, i32 -128, i32 -128, i32 -128], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_argbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_argbi(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %7, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @get_bits1(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %76

32:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %72, %32
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @get_bits(i32* %40, i32 8)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %43, 4
  %45 = add nsw i32 %44, 0
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @get_bits(i32* %48, i32 8)
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %51, 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @get_bits(i32* %56, i32 8)
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 4
  %61 = add nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @get_bits(i32* %64, i32 8)
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %67, 4
  %69 = add nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32 %65, i32* %71, align 4
  br label %72

72:                                               ; preds = %39
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %33

75:                                               ; preds = %33
  br label %199

76:                                               ; preds = %3
  %77 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %77, i8* align 16 bitcast ([4 x i32]* @__const.decode_argbi.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %195, %76
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %198

84:                                               ; preds = %78
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @get_vlc2(i32* %85, i32 %91, i32 %97, i32 2)
  store i32 %98, i32* %12, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @get_vlc2(i32* %99, i32 %105, i32 %111, i32 2)
  store i32 %112, i32* %13, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @get_vlc2(i32* %113, i32 %119, i32 %125, i32 2)
  store i32 %126, i32* %14, align 4
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 1
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @get_vlc2(i32* %127, i32 %133, i32 %139, i32 2)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %12, align 4
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %143 = load i32, i32* %142, align 16
  %144 = add nsw i32 %141, %143
  %145 = and i32 %144, 255
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %145, i32* %146, align 16
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %9, align 4
  %149 = mul nsw i32 4, %148
  %150 = add nsw i32 %149, 0
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  store i32 %145, i32* %152, align 4
  %153 = load i32, i32* %13, align 4
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %153, %155
  %157 = and i32 %156, 255
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %157, i32* %158, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* %9, align 4
  %161 = mul nsw i32 4, %160
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  store i32 %157, i32* %164, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %165, %166
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %167, %169
  %171 = and i32 %170, 255
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %171, i32* %172, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %9, align 4
  %175 = mul nsw i32 4, %174
  %176 = add nsw i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  store i32 %171, i32* %178, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %181, %182
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %183, %185
  %187 = and i32 %186, 255
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %187, i32* %188, align 4
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* %9, align 4
  %191 = mul nsw i32 4, %190
  %192 = add nsw i32 %191, 3
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %189, i64 %193
  store i32 %187, i32* %194, align 4
  br label %195

195:                                              ; preds = %84
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %78

198:                                              ; preds = %78
  br label %199

199:                                              ; preds = %198, %75
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %8, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %8, align 8
  store i32 1, i32* %10, align 4
  br label %208

208:                                              ; preds = %441, %199
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %444

214:                                              ; preds = %208
  %215 = load i32*, i32** %6, align 8
  %216 = call i64 @get_bits1(i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %262

218:                                              ; preds = %214
  store i32 0, i32* %9, align 4
  br label %219

219:                                              ; preds = %258, %218
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %261

225:                                              ; preds = %219
  %226 = load i32*, i32** %6, align 8
  %227 = call i32 @get_bits(i32* %226, i32 8)
  %228 = load i32*, i32** %8, align 8
  %229 = load i32, i32* %9, align 4
  %230 = mul nsw i32 %229, 4
  %231 = add nsw i32 %230, 0
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %228, i64 %232
  store i32 %227, i32* %233, align 4
  %234 = load i32*, i32** %6, align 8
  %235 = call i32 @get_bits(i32* %234, i32 8)
  %236 = load i32*, i32** %8, align 8
  %237 = load i32, i32* %9, align 4
  %238 = mul nsw i32 %237, 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %236, i64 %240
  store i32 %235, i32* %241, align 4
  %242 = load i32*, i32** %6, align 8
  %243 = call i32 @get_bits(i32* %242, i32 8)
  %244 = load i32*, i32** %8, align 8
  %245 = load i32, i32* %9, align 4
  %246 = mul nsw i32 %245, 4
  %247 = add nsw i32 %246, 2
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  store i32 %243, i32* %249, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = call i32 @get_bits(i32* %250, i32 8)
  %252 = load i32*, i32** %8, align 8
  %253 = load i32, i32* %9, align 4
  %254 = mul nsw i32 %253, 4
  %255 = add nsw i32 %254, 3
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  store i32 %251, i32* %257, align 4
  br label %258

258:                                              ; preds = %225
  %259 = load i32, i32* %9, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %9, align 4
  br label %219

261:                                              ; preds = %219
  br label %432

262:                                              ; preds = %214
  %263 = load i32*, i32** %8, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 0, %268
  %270 = add nsw i32 %269, 0
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %263, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %273, i32* %274, align 16
  %275 = load i32*, i32** %8, align 8
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 0, %280
  %282 = add nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %275, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %285, i32* %286, align 4
  %287 = load i32*, i32** %8, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = sub nsw i32 0, %292
  %294 = add nsw i32 %293, 2
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %287, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %297, i32* %298, align 8
  %299 = load i32*, i32** %8, align 8
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  %304 = load i32, i32* %303, align 4
  %305 = sub nsw i32 0, %304
  %306 = add nsw i32 %305, 3
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %299, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %309, i32* %310, align 4
  store i32 0, i32* %9, align 4
  br label %311

311:                                              ; preds = %428, %262
  %312 = load i32, i32* %9, align 4
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %431

317:                                              ; preds = %311
  %318 = load i32*, i32** %6, align 8
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i64 1
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i64 1
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @get_vlc2(i32* %318, i32 %324, i32 %330, i32 2)
  store i32 %331, i32* %17, align 4
  %332 = load i32*, i32** %6, align 8
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i64 0
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i64 0
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @get_vlc2(i32* %332, i32 %338, i32 %344, i32 2)
  store i32 %345, i32* %18, align 4
  %346 = load i32*, i32** %6, align 8
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i64 1
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i64 1
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @get_vlc2(i32* %346, i32 %352, i32 %358, i32 2)
  store i32 %359, i32* %19, align 4
  %360 = load i32*, i32** %6, align 8
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i64 1
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i64 1
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @get_vlc2(i32* %360, i32 %366, i32 %372, i32 2)
  store i32 %373, i32* %20, align 4
  %374 = load i32, i32* %17, align 4
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %376 = load i32, i32* %375, align 16
  %377 = add nsw i32 %374, %376
  %378 = and i32 %377, 255
  %379 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %378, i32* %379, align 16
  %380 = load i32*, i32** %8, align 8
  %381 = load i32, i32* %9, align 4
  %382 = mul nsw i32 4, %381
  %383 = add nsw i32 %382, 0
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %380, i64 %384
  store i32 %378, i32* %385, align 4
  %386 = load i32, i32* %18, align 4
  %387 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %386, %388
  %390 = and i32 %389, 255
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %390, i32* %391, align 4
  %392 = load i32*, i32** %8, align 8
  %393 = load i32, i32* %9, align 4
  %394 = mul nsw i32 4, %393
  %395 = add nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %392, i64 %396
  store i32 %390, i32* %397, align 4
  %398 = load i32, i32* %18, align 4
  %399 = load i32, i32* %19, align 4
  %400 = add nsw i32 %398, %399
  %401 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %402 = load i32, i32* %401, align 8
  %403 = add nsw i32 %400, %402
  %404 = and i32 %403, 255
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %404, i32* %405, align 8
  %406 = load i32*, i32** %8, align 8
  %407 = load i32, i32* %9, align 4
  %408 = mul nsw i32 4, %407
  %409 = add nsw i32 %408, 2
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %406, i64 %410
  store i32 %404, i32* %411, align 4
  %412 = load i32, i32* %18, align 4
  %413 = load i32, i32* %19, align 4
  %414 = add nsw i32 %412, %413
  %415 = load i32, i32* %20, align 4
  %416 = add nsw i32 %414, %415
  %417 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %418 = load i32, i32* %417, align 4
  %419 = add nsw i32 %416, %418
  %420 = and i32 %419, 255
  %421 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %420, i32* %421, align 4
  %422 = load i32*, i32** %8, align 8
  %423 = load i32, i32* %9, align 4
  %424 = mul nsw i32 4, %423
  %425 = add nsw i32 %424, 3
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %422, i64 %426
  store i32 %420, i32* %427, align 4
  br label %428

428:                                              ; preds = %317
  %429 = load i32, i32* %9, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %9, align 4
  br label %311

431:                                              ; preds = %311
  br label %432

432:                                              ; preds = %431, %261
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 1
  %435 = load i32*, i32** %434, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 0
  %437 = load i32, i32* %436, align 4
  %438 = load i32*, i32** %8, align 8
  %439 = sext i32 %437 to i64
  %440 = getelementptr inbounds i32, i32* %438, i64 %439
  store i32* %440, i32** %8, align 8
  br label %441

441:                                              ; preds = %432
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %10, align 4
  br label %208

444:                                              ; preds = %208
  ret void
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
