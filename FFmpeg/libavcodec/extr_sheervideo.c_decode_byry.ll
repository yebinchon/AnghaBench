; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_byry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_byry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i64* }

@__const.decode_byry.pred = private unnamed_addr constant [4 x i32] [i32 125, i32 -128, i32 -128, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_byry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_byry(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca [4 x i32], align 16
  %20 = alloca [4 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %7, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 2
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @get_bits1(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %85

46:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %81, %46
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %47
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @get_bits(i32* %54, i32 8)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @get_bits(i32* %60, i32 8)
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sdiv i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @get_bits(i32* %67, i32 8)
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @get_bits(i32* %74, i32 8)
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sdiv i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  br label %81

81:                                               ; preds = %53
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %11, align 4
  br label %47

84:                                               ; preds = %47
  br label %197

85:                                               ; preds = %3
  %86 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %86, i8* align 16 bitcast ([4 x i32]* @__const.decode_byry.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %193, %85
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %196

93:                                               ; preds = %87
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @get_vlc2(i32* %94, i32 %100, i32 %106, i32 2)
  store i32 %107, i32* %14, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @get_vlc2(i32* %108, i32 %114, i32 %120, i32 2)
  store i32 %121, i32* %16, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @get_vlc2(i32* %122, i32 %128, i32 %134, i32 2)
  store i32 %135, i32* %15, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @get_vlc2(i32* %136, i32 %142, i32 %148, i32 2)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %14, align 4
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %152 = load i32, i32* %151, align 16
  %153 = add nsw i32 %150, %152
  %154 = and i32 %153, 255
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %154, i32* %155, align 16
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %154, i32* %159, align 4
  %160 = load i32, i32* %16, align 4
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %160, %162
  %164 = and i32 %163, 255
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %164, i32* %165, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sdiv i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %164, i32* %170, align 4
  %171 = load i32, i32* %15, align 4
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %173 = load i32, i32* %172, align 16
  %174 = add nsw i32 %171, %173
  %175 = and i32 %174, 255
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %175, i32* %176, align 16
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  store i32 %175, i32* %181, align 4
  %182 = load i32, i32* %17, align 4
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %182, %184
  %186 = and i32 %185, 255
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %186, i32* %187, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = sdiv i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  store i32 %186, i32* %192, align 4
  br label %193

193:                                              ; preds = %93
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 2
  store i32 %195, i32* %11, align 4
  br label %87

196:                                              ; preds = %87
  br label %197

197:                                              ; preds = %196, %84
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 0
  %202 = load i64, i64* %201, align 8
  %203 = load i32*, i32** %8, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 %202
  store i32* %204, i32** %8, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 1
  %209 = load i64, i64* %208, align 8
  %210 = load i32*, i32** %9, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 %209
  store i32* %211, i32** %9, align 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 1
  %214 = load i64*, i64** %213, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 2
  %216 = load i64, i64* %215, align 8
  %217 = load i32*, i32** %10, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 %216
  store i32* %218, i32** %10, align 8
  store i32 1, i32* %12, align 4
  br label %219

219:                                              ; preds = %530, %197
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %533

225:                                              ; preds = %219
  %226 = load i32*, i32** %6, align 8
  %227 = call i64 @get_bits1(i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %268

229:                                              ; preds = %225
  store i32 0, i32* %11, align 4
  br label %230

230:                                              ; preds = %264, %229
  %231 = load i32, i32* %11, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %267

236:                                              ; preds = %230
  %237 = load i32*, i32** %6, align 8
  %238 = call i32 @get_bits(i32* %237, i32 8)
  %239 = load i32*, i32** %8, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %238, i32* %242, align 4
  %243 = load i32*, i32** %6, align 8
  %244 = call i32 @get_bits(i32* %243, i32 8)
  %245 = load i32*, i32** %9, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sdiv i32 %246, 2
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 %244, i32* %249, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = call i32 @get_bits(i32* %250, i32 8)
  %252 = load i32*, i32** %8, align 8
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  store i32 %251, i32* %256, align 4
  %257 = load i32*, i32** %6, align 8
  %258 = call i32 @get_bits(i32* %257, i32 8)
  %259 = load i32*, i32** %10, align 8
  %260 = load i32, i32* %11, align 4
  %261 = sdiv i32 %260, 2
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  store i32 %258, i32* %263, align 4
  br label %264

264:                                              ; preds = %236
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, 2
  store i32 %266, i32* %11, align 4
  br label %230

267:                                              ; preds = %230
  br label %508

268:                                              ; preds = %225
  %269 = load i32*, i32** %8, align 8
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 1
  %272 = load i64*, i64** %271, align 8
  %273 = getelementptr inbounds i64, i64* %272, i64 0
  %274 = load i64, i64* %273, align 8
  %275 = sub i64 0, %274
  %276 = getelementptr inbounds i32, i32* %269, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %277, i32* %278, align 16
  %279 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %277, i32* %279, align 16
  %280 = load i32*, i32** %9, align 8
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 1
  %283 = load i64*, i64** %282, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 1
  %285 = load i64, i64* %284, align 8
  %286 = sub i64 0, %285
  %287 = getelementptr inbounds i32, i32* %280, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %288, i32* %289, align 4
  %290 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %288, i32* %290, align 4
  %291 = load i32*, i32** %10, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  %294 = load i64*, i64** %293, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 2
  %296 = load i64, i64* %295, align 8
  %297 = sub i64 0, %296
  %298 = getelementptr inbounds i32, i32* %291, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %299, i32* %300, align 8
  %301 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %299, i32* %301, align 8
  store i32 0, i32* %11, align 4
  br label %302

302:                                              ; preds = %504, %268
  %303 = load i32, i32* %11, align 4
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp slt i32 %303, %306
  br i1 %307, label %308, label %507

308:                                              ; preds = %302
  %309 = load i32*, i32** %8, align 8
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 1
  %312 = load i64*, i64** %311, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 0
  %314 = load i64, i64* %313, align 8
  %315 = sub i64 0, %314
  %316 = load i32, i32* %11, align 4
  %317 = sext i32 %316 to i64
  %318 = add i64 %315, %317
  %319 = getelementptr inbounds i32, i32* %309, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  store i32 %320, i32* %321, align 16
  %322 = load i32*, i32** %8, align 8
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 1
  %325 = load i64*, i64** %324, align 8
  %326 = getelementptr inbounds i64, i64* %325, i64 0
  %327 = load i64, i64* %326, align 8
  %328 = sub i64 0, %327
  %329 = load i32, i32* %11, align 4
  %330 = sext i32 %329 to i64
  %331 = add i64 %328, %330
  %332 = add i64 %331, 1
  %333 = getelementptr inbounds i32, i32* %322, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  store i32 %334, i32* %335, align 4
  %336 = load i32*, i32** %9, align 8
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 1
  %339 = load i64*, i64** %338, align 8
  %340 = getelementptr inbounds i64, i64* %339, i64 1
  %341 = load i64, i64* %340, align 8
  %342 = sub i64 0, %341
  %343 = load i32, i32* %11, align 4
  %344 = sdiv i32 %343, 2
  %345 = sext i32 %344 to i64
  %346 = add i64 %342, %345
  %347 = getelementptr inbounds i32, i32* %336, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  store i32 %348, i32* %349, align 4
  %350 = load i32*, i32** %10, align 8
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 1
  %353 = load i64*, i64** %352, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 2
  %355 = load i64, i64* %354, align 8
  %356 = sub i64 0, %355
  %357 = load i32, i32* %11, align 4
  %358 = sdiv i32 %357, 2
  %359 = sext i32 %358 to i64
  %360 = add i64 %356, %359
  %361 = getelementptr inbounds i32, i32* %350, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  store i32 %362, i32* %363, align 8
  %364 = load i32*, i32** %6, align 8
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 0
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i64 0
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i64 0
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @get_vlc2(i32* %364, i32 %370, i32 %376, i32 2)
  store i32 %377, i32* %21, align 4
  %378 = load i32*, i32** %6, align 8
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i64 1
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i64 1
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @get_vlc2(i32* %378, i32 %384, i32 %390, i32 2)
  store i32 %391, i32* %23, align 4
  %392 = load i32*, i32** %6, align 8
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i64 0
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_7__*, %struct.TYPE_7__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i64 0
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @get_vlc2(i32* %392, i32 %398, i32 %404, i32 2)
  store i32 %405, i32* %22, align 4
  %406 = load i32*, i32** %6, align 8
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 0
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i64 1
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i64 1
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @get_vlc2(i32* %406, i32 %412, i32 %418, i32 2)
  store i32 %419, i32* %24, align 4
  %420 = load i32, i32* %21, align 4
  %421 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %422 = load i32, i32* %421, align 16
  %423 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %424 = load i32, i32* %423, align 16
  %425 = add nsw i32 %422, %424
  %426 = mul nsw i32 3, %425
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %428 = load i32, i32* %427, align 16
  %429 = mul nsw i32 2, %428
  %430 = sub nsw i32 %426, %429
  %431 = ashr i32 %430, 2
  %432 = add nsw i32 %420, %431
  %433 = and i32 %432, 255
  %434 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %433, i32* %434, align 16
  %435 = load i32*, i32** %8, align 8
  %436 = load i32, i32* %11, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  store i32 %433, i32* %438, align 4
  %439 = load i32, i32* %23, align 4
  %440 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %441 = load i32, i32* %440, align 4
  %442 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %443 = load i32, i32* %442, align 4
  %444 = sub nsw i32 %441, %443
  %445 = ashr i32 %444, 1
  %446 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %445, %447
  %449 = add nsw i32 %439, %448
  %450 = and i32 %449, 255
  %451 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %450, i32* %451, align 4
  %452 = load i32*, i32** %9, align 8
  %453 = load i32, i32* %11, align 4
  %454 = sdiv i32 %453, 2
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %452, i64 %455
  store i32 %450, i32* %456, align 4
  %457 = load i32, i32* %22, align 4
  %458 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  %459 = load i32, i32* %458, align 4
  %460 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %461 = load i32, i32* %460, align 16
  %462 = add nsw i32 %459, %461
  %463 = mul nsw i32 3, %462
  %464 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %465 = load i32, i32* %464, align 16
  %466 = mul nsw i32 2, %465
  %467 = sub nsw i32 %463, %466
  %468 = ashr i32 %467, 2
  %469 = add nsw i32 %457, %468
  %470 = and i32 %469, 255
  %471 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %470, i32* %471, align 16
  %472 = load i32*, i32** %8, align 8
  %473 = load i32, i32* %11, align 4
  %474 = add nsw i32 %473, 1
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %472, i64 %475
  store i32 %470, i32* %476, align 4
  %477 = load i32, i32* %24, align 4
  %478 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %479 = load i32, i32* %478, align 8
  %480 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %481 = load i32, i32* %480, align 8
  %482 = sub nsw i32 %479, %481
  %483 = ashr i32 %482, 1
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %485 = load i32, i32* %484, align 8
  %486 = add nsw i32 %483, %485
  %487 = add nsw i32 %477, %486
  %488 = and i32 %487, 255
  %489 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %488, i32* %489, align 8
  %490 = load i32*, i32** %10, align 8
  %491 = load i32, i32* %11, align 4
  %492 = sdiv i32 %491, 2
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %490, i64 %493
  store i32 %488, i32* %494, align 4
  %495 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  %496 = load i32, i32* %495, align 4
  %497 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %496, i32* %497, align 16
  %498 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  %499 = load i32, i32* %498, align 4
  %500 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %499, i32* %500, align 4
  %501 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %502 = load i32, i32* %501, align 8
  %503 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %502, i32* %503, align 8
  br label %504

504:                                              ; preds = %308
  %505 = load i32, i32* %11, align 4
  %506 = add nsw i32 %505, 2
  store i32 %506, i32* %11, align 4
  br label %302

507:                                              ; preds = %302
  br label %508

508:                                              ; preds = %507, %267
  %509 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %509, i32 0, i32 1
  %511 = load i64*, i64** %510, align 8
  %512 = getelementptr inbounds i64, i64* %511, i64 0
  %513 = load i64, i64* %512, align 8
  %514 = load i32*, i32** %8, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 %513
  store i32* %515, i32** %8, align 8
  %516 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %517 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %516, i32 0, i32 1
  %518 = load i64*, i64** %517, align 8
  %519 = getelementptr inbounds i64, i64* %518, i64 1
  %520 = load i64, i64* %519, align 8
  %521 = load i32*, i32** %9, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 %520
  store i32* %522, i32** %9, align 8
  %523 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %524 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %523, i32 0, i32 1
  %525 = load i64*, i64** %524, align 8
  %526 = getelementptr inbounds i64, i64* %525, i64 2
  %527 = load i64, i64* %526, align 8
  %528 = load i32*, i32** %10, align 8
  %529 = getelementptr inbounds i32, i32* %528, i64 %527
  store i32* %529, i32** %10, align 8
  br label %530

530:                                              ; preds = %508
  %531 = load i32, i32* %12, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %12, align 4
  br label %219

533:                                              ; preds = %219
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
