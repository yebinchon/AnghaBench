; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i32* }

@__const.decode_rgb.pred = private unnamed_addr constant [4 x i32] [i32 -128, i32 -128, i32 -128, i32 -128], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_rgb(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
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
  %15 = alloca [4 x i32], align 16
  %16 = alloca [4 x i32], align 16
  %17 = alloca [4 x i32], align 16
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
  br i1 %31, label %32, label %68

32:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %64, %32
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %67

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
  br label %64

64:                                               ; preds = %39
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %33

67:                                               ; preds = %33
  br label %165

68:                                               ; preds = %3
  %69 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %69, i8* align 16 bitcast ([4 x i32]* @__const.decode_rgb.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %161, %68
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %164

76:                                               ; preds = %70
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @get_vlc2(i32* %77, i32 %83, i32 %89, i32 2)
  store i32 %90, i32* %12, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @get_vlc2(i32* %91, i32 %97, i32 %103, i32 2)
  store i32 %104, i32* %13, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @get_vlc2(i32* %105, i32 %111, i32 %117, i32 2)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %12, align 4
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %121 = load i32, i32* %120, align 16
  %122 = add nsw i32 %119, %121
  %123 = and i32 %122, 255
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %123, i32* %124, align 16
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 4, %126
  %128 = add nsw i32 %127, 0
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  store i32 %123, i32* %130, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %131, %132
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %133, %135
  %137 = and i32 %136, 255
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %137, i32* %138, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = mul nsw i32 4, %140
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  store i32 %137, i32* %144, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %147, %148
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %149, %151
  %153 = and i32 %152, 255
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %153, i32* %154, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %9, align 4
  %157 = mul nsw i32 4, %156
  %158 = add nsw i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  store i32 %153, i32* %160, align 4
  br label %161

161:                                              ; preds = %76
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %70

164:                                              ; preds = %70
  br label %165

165:                                              ; preds = %164, %67
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %8, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %8, align 8
  store i32 1, i32* %10, align 4
  br label %174

174:                                              ; preds = %445, %165
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %448

180:                                              ; preds = %174
  %181 = load i32*, i32** %6, align 8
  %182 = call i64 @get_bits1(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %220

184:                                              ; preds = %180
  store i32 0, i32* %9, align 4
  br label %185

185:                                              ; preds = %216, %184
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %219

191:                                              ; preds = %185
  %192 = load i32*, i32** %6, align 8
  %193 = call i32 @get_bits(i32* %192, i32 8)
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %9, align 4
  %196 = mul nsw i32 %195, 4
  %197 = add nsw i32 %196, 0
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  store i32 %193, i32* %199, align 4
  %200 = load i32*, i32** %6, align 8
  %201 = call i32 @get_bits(i32* %200, i32 8)
  %202 = load i32*, i32** %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = mul nsw i32 %203, 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  store i32 %201, i32* %207, align 4
  %208 = load i32*, i32** %6, align 8
  %209 = call i32 @get_bits(i32* %208, i32 8)
  %210 = load i32*, i32** %8, align 8
  %211 = load i32, i32* %9, align 4
  %212 = mul nsw i32 %211, 4
  %213 = add nsw i32 %212, 2
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  store i32 %209, i32* %215, align 4
  br label %216

216:                                              ; preds = %191
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %185

219:                                              ; preds = %185
  br label %436

220:                                              ; preds = %180
  %221 = load i32*, i32** %8, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 0, %226
  %228 = add nsw i32 %227, 0
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %221, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %231, i32* %232, align 16
  %233 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %231, i32* %233, align 16
  %234 = load i32*, i32** %8, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 0, %239
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %234, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %244, i32* %245, align 4
  %246 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %244, i32* %246, align 4
  %247 = load i32*, i32** %8, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = sub nsw i32 0, %252
  %254 = add nsw i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %247, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %257, i32* %258, align 8
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %257, i32* %259, align 8
  store i32 0, i32* %9, align 4
  br label %260

260:                                              ; preds = %432, %220
  %261 = load i32, i32* %9, align 4
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp slt i32 %261, %264
  br i1 %265, label %266, label %435

266:                                              ; preds = %260
  %267 = load i32*, i32** %8, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = sub nsw i32 0, %272
  %274 = load i32, i32* %9, align 4
  %275 = mul nsw i32 4, %274
  %276 = add nsw i32 %273, %275
  %277 = add nsw i32 %276, 0
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %267, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %280, i32* %281, align 16
  %282 = load i32*, i32** %8, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = sub nsw i32 0, %287
  %289 = load i32, i32* %9, align 4
  %290 = mul nsw i32 4, %289
  %291 = add nsw i32 %288, %290
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %282, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %295, i32* %296, align 4
  %297 = load i32*, i32** %8, align 8
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 0, %302
  %304 = load i32, i32* %9, align 4
  %305 = mul nsw i32 4, %304
  %306 = add nsw i32 %303, %305
  %307 = add nsw i32 %306, 2
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %297, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %310, i32* %311, align 8
  %312 = load i32*, i32** %6, align 8
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i64 0
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i64 0
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @get_vlc2(i32* %312, i32 %318, i32 %324, i32 2)
  store i32 %325, i32* %18, align 4
  %326 = load i32*, i32** %6, align 8
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 0
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i64 1
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i64 1
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @get_vlc2(i32* %326, i32 %332, i32 %338, i32 2)
  store i32 %339, i32* %19, align 4
  %340 = load i32*, i32** %6, align 8
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_7__*, %struct.TYPE_7__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i64 1
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i64 1
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @get_vlc2(i32* %340, i32 %346, i32 %352, i32 2)
  store i32 %353, i32* %20, align 4
  %354 = load i32, i32* %18, align 4
  %355 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %356 = load i32, i32* %355, align 16
  %357 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %358 = load i32, i32* %357, align 16
  %359 = add nsw i32 %356, %358
  %360 = mul nsw i32 3, %359
  %361 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %362 = load i32, i32* %361, align 16
  %363 = mul nsw i32 2, %362
  %364 = sub nsw i32 %360, %363
  %365 = ashr i32 %364, 2
  %366 = add nsw i32 %354, %365
  %367 = and i32 %366, 255
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %367, i32* %368, align 16
  %369 = load i32*, i32** %8, align 8
  %370 = load i32, i32* %9, align 4
  %371 = mul nsw i32 4, %370
  %372 = add nsw i32 %371, 0
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %369, i64 %373
  store i32 %367, i32* %374, align 4
  %375 = load i32, i32* %18, align 4
  %376 = load i32, i32* %19, align 4
  %377 = add nsw i32 %375, %376
  %378 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %379 = load i32, i32* %378, align 4
  %380 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %379, %381
  %383 = mul nsw i32 3, %382
  %384 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %385 = load i32, i32* %384, align 4
  %386 = mul nsw i32 2, %385
  %387 = sub nsw i32 %383, %386
  %388 = ashr i32 %387, 2
  %389 = add nsw i32 %377, %388
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
  %401 = load i32, i32* %20, align 4
  %402 = add nsw i32 %400, %401
  %403 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %404 = load i32, i32* %403, align 8
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %406 = load i32, i32* %405, align 8
  %407 = add nsw i32 %404, %406
  %408 = mul nsw i32 3, %407
  %409 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %410 = load i32, i32* %409, align 8
  %411 = mul nsw i32 2, %410
  %412 = sub nsw i32 %408, %411
  %413 = ashr i32 %412, 2
  %414 = add nsw i32 %402, %413
  %415 = and i32 %414, 255
  %416 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %415, i32* %416, align 8
  %417 = load i32*, i32** %8, align 8
  %418 = load i32, i32* %9, align 4
  %419 = mul nsw i32 4, %418
  %420 = add nsw i32 %419, 2
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %417, i64 %421
  store i32 %415, i32* %422, align 4
  %423 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %424 = load i32, i32* %423, align 16
  %425 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %424, i32* %425, align 16
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %427 = load i32, i32* %426, align 4
  %428 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %427, i32* %428, align 4
  %429 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %430 = load i32, i32* %429, align 8
  %431 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %430, i32* %431, align 8
  br label %432

432:                                              ; preds = %266
  %433 = load i32, i32* %9, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %9, align 4
  br label %260

435:                                              ; preds = %260
  br label %436

436:                                              ; preds = %435, %219
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 1
  %439 = load i32*, i32** %438, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 0
  %441 = load i32, i32* %440, align 4
  %442 = load i32*, i32** %8, align 8
  %443 = sext i32 %441 to i64
  %444 = getelementptr inbounds i32, i32* %442, i64 %443
  store i32* %444, i32** %8, align 8
  br label %445

445:                                              ; preds = %436
  %446 = load i32, i32* %10, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %10, align 4
  br label %174

448:                                              ; preds = %174
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
