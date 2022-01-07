; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_byryi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_byryi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i64* }

@__const.decode_byryi.pred = private unnamed_addr constant [4 x i32] [i32 125, i32 -128, i32 -128, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_byryi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_byryi(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %7, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %9, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @get_bits1(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %79, %44
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %82

51:                                               ; preds = %45
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @get_bits(i32* %52, i32 8)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @get_bits(i32* %58, i32 8)
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sdiv i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @get_bits(i32* %65, i32 8)
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @get_bits(i32* %72, i32 8)
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sdiv i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %73, i32* %78, align 4
  br label %79

79:                                               ; preds = %51
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %11, align 4
  br label %45

82:                                               ; preds = %45
  br label %195

83:                                               ; preds = %3
  %84 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %84, i8* align 16 bitcast ([4 x i32]* @__const.decode_byryi.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %191, %83
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %194

91:                                               ; preds = %85
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @get_vlc2(i32* %92, i32 %98, i32 %104, i32 2)
  store i32 %105, i32* %14, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @get_vlc2(i32* %106, i32 %112, i32 %118, i32 2)
  store i32 %119, i32* %16, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @get_vlc2(i32* %120, i32 %126, i32 %132, i32 2)
  store i32 %133, i32* %15, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @get_vlc2(i32* %134, i32 %140, i32 %146, i32 2)
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %14, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %150 = load i32, i32* %149, align 16
  %151 = add nsw i32 %148, %150
  %152 = and i32 %151, 255
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %152, i32* %153, align 16
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %152, i32* %157, align 4
  %158 = load i32, i32* %16, align 4
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %158, %160
  %162 = and i32 %161, 255
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %162, i32* %163, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sdiv i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  store i32 %162, i32* %168, align 4
  %169 = load i32, i32* %15, align 4
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %171 = load i32, i32* %170, align 16
  %172 = add nsw i32 %169, %171
  %173 = and i32 %172, 255
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %173, i32* %174, align 16
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* %11, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  store i32 %173, i32* %179, align 4
  %180 = load i32, i32* %17, align 4
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %180, %182
  %184 = and i32 %183, 255
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %184, i32* %185, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sdiv i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 %184, i32* %190, align 4
  br label %191

191:                                              ; preds = %91
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 2
  store i32 %193, i32* %11, align 4
  br label %85

194:                                              ; preds = %85
  br label %195

195:                                              ; preds = %194, %82
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 0
  %200 = load i64, i64* %199, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 %200
  store i32* %202, i32** %8, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 1
  %207 = load i64, i64* %206, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 %207
  store i32* %209, i32** %9, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 2
  %214 = load i64, i64* %213, align 8
  %215 = load i32*, i32** %10, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 %214
  store i32* %216, i32** %10, align 8
  store i32 1, i32* %12, align 4
  br label %217

217:                                              ; preds = %429, %195
  %218 = load i32, i32* %12, align 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %432

223:                                              ; preds = %217
  %224 = load i32*, i32** %6, align 8
  %225 = call i64 @get_bits1(i32* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %266

227:                                              ; preds = %223
  store i32 0, i32* %11, align 4
  br label %228

228:                                              ; preds = %262, %227
  %229 = load i32, i32* %11, align 4
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %265

234:                                              ; preds = %228
  %235 = load i32*, i32** %6, align 8
  %236 = call i32 @get_bits(i32* %235, i32 8)
  %237 = load i32*, i32** %8, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %236, i32* %240, align 4
  %241 = load i32*, i32** %6, align 8
  %242 = call i32 @get_bits(i32* %241, i32 8)
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sdiv i32 %244, 2
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  store i32 %242, i32* %247, align 4
  %248 = load i32*, i32** %6, align 8
  %249 = call i32 @get_bits(i32* %248, i32 8)
  %250 = load i32*, i32** %8, align 8
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  store i32 %249, i32* %254, align 4
  %255 = load i32*, i32** %6, align 8
  %256 = call i32 @get_bits(i32* %255, i32 8)
  %257 = load i32*, i32** %10, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sdiv i32 %258, 2
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  store i32 %256, i32* %261, align 4
  br label %262

262:                                              ; preds = %234
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 2
  store i32 %264, i32* %11, align 4
  br label %228

265:                                              ; preds = %228
  br label %407

266:                                              ; preds = %223
  %267 = load i32*, i32** %8, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 1
  %270 = load i64*, i64** %269, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 0
  %272 = load i64, i64* %271, align 8
  %273 = sub i64 0, %272
  %274 = getelementptr inbounds i32, i32* %267, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %275, i32* %276, align 16
  %277 = load i32*, i32** %9, align 8
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 1
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 1
  %282 = load i64, i64* %281, align 8
  %283 = sub i64 0, %282
  %284 = getelementptr inbounds i32, i32* %277, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %285, i32* %286, align 4
  %287 = load i32*, i32** %10, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 1
  %290 = load i64*, i64** %289, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 2
  %292 = load i64, i64* %291, align 8
  %293 = sub i64 0, %292
  %294 = getelementptr inbounds i32, i32* %287, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %295, i32* %296, align 8
  store i32 0, i32* %11, align 4
  br label %297

297:                                              ; preds = %403, %266
  %298 = load i32, i32* %11, align 4
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp slt i32 %298, %301
  br i1 %302, label %303, label %406

303:                                              ; preds = %297
  %304 = load i32*, i32** %6, align 8
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i64 0
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i64 0
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @get_vlc2(i32* %304, i32 %310, i32 %316, i32 2)
  store i32 %317, i32* %19, align 4
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
  store i32 %331, i32* %21, align 4
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
  store i32 %345, i32* %20, align 4
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
  store i32 %359, i32* %22, align 4
  %360 = load i32, i32* %19, align 4
  %361 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %362 = load i32, i32* %361, align 16
  %363 = add nsw i32 %360, %362
  %364 = and i32 %363, 255
  %365 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %364, i32* %365, align 16
  %366 = load i32*, i32** %8, align 8
  %367 = load i32, i32* %11, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  store i32 %364, i32* %369, align 4
  %370 = load i32, i32* %21, align 4
  %371 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %370, %372
  %374 = and i32 %373, 255
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %374, i32* %375, align 4
  %376 = load i32*, i32** %9, align 8
  %377 = load i32, i32* %11, align 4
  %378 = sdiv i32 %377, 2
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  store i32 %374, i32* %380, align 4
  %381 = load i32, i32* %20, align 4
  %382 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %383 = load i32, i32* %382, align 16
  %384 = add nsw i32 %381, %383
  %385 = and i32 %384, 255
  %386 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %385, i32* %386, align 16
  %387 = load i32*, i32** %8, align 8
  %388 = load i32, i32* %11, align 4
  %389 = add nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %387, i64 %390
  store i32 %385, i32* %391, align 4
  %392 = load i32, i32* %22, align 4
  %393 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %394 = load i32, i32* %393, align 8
  %395 = add nsw i32 %392, %394
  %396 = and i32 %395, 255
  %397 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %396, i32* %397, align 8
  %398 = load i32*, i32** %10, align 8
  %399 = load i32, i32* %11, align 4
  %400 = sdiv i32 %399, 2
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %398, i64 %401
  store i32 %396, i32* %402, align 4
  br label %403

403:                                              ; preds = %303
  %404 = load i32, i32* %11, align 4
  %405 = add nsw i32 %404, 2
  store i32 %405, i32* %11, align 4
  br label %297

406:                                              ; preds = %297
  br label %407

407:                                              ; preds = %406, %265
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i32 0, i32 1
  %410 = load i64*, i64** %409, align 8
  %411 = getelementptr inbounds i64, i64* %410, i64 0
  %412 = load i64, i64* %411, align 8
  %413 = load i32*, i32** %8, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 %412
  store i32* %414, i32** %8, align 8
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 1
  %417 = load i64*, i64** %416, align 8
  %418 = getelementptr inbounds i64, i64* %417, i64 1
  %419 = load i64, i64* %418, align 8
  %420 = load i32*, i32** %9, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 %419
  store i32* %421, i32** %9, align 8
  %422 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 1
  %424 = load i64*, i64** %423, align 8
  %425 = getelementptr inbounds i64, i64* %424, i64 2
  %426 = load i64, i64* %425, align 8
  %427 = load i32*, i32** %10, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 %426
  store i32* %428, i32** %10, align 8
  br label %429

429:                                              ; preds = %407
  %430 = load i32, i32* %12, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %12, align 4
  br label %217

432:                                              ; preds = %217
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
