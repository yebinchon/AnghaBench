; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_argx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_argx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i64* }

@__const.decode_argx.pred = private unnamed_addr constant [4 x i32] [i32 512, i32 512, i32 512, i32 512], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_argx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_argx(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [4 x i32], align 16
  %20 = alloca [4 x i32], align 16
  %21 = alloca [4 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %7, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %8, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %9, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %10, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 3
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @get_bits1(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %88, %56
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %57
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @get_bits(i32* %64, i32 10)
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @get_bits(i32* %70, i32 10)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @get_bits(i32* %76, i32 10)
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @get_bits(i32* %82, i32 10)
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %63
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %57

91:                                               ; preds = %57
  br label %207

92:                                               ; preds = %3
  %93 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %93, i8* align 16 bitcast ([4 x i32]* @__const.decode_argx.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %203, %92
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %206

100:                                              ; preds = %94
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @get_vlc2(i32* %101, i32 %107, i32 %113, i32 2)
  store i32 %114, i32* %18, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @get_vlc2(i32* %115, i32 %121, i32 %127, i32 2)
  store i32 %128, i32* %15, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @get_vlc2(i32* %129, i32 %135, i32 %141, i32 2)
  store i32 %142, i32* %16, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @get_vlc2(i32* %143, i32 %149, i32 %155, i32 2)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %18, align 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %157, %159
  %161 = and i32 %160, 1023
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  store i32 %161, i32* %162, align 4
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %161, i32* %166, align 4
  %167 = load i32, i32* %15, align 4
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %169 = load i32, i32* %168, align 16
  %170 = add nsw i32 %167, %169
  %171 = and i32 %170, 1023
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  store i32 %171, i32* %172, align 16
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %177, %178
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %179, %181
  %183 = and i32 %182, 1023
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  store i32 %183, i32* %184, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %183, i32* %188, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %189, %190
  %192 = load i32, i32* %17, align 4
  %193 = add nsw i32 %191, %192
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %193, %195
  %197 = and i32 %196, 1023
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  store i32 %197, i32* %198, align 8
  %199 = load i32*, i32** %10, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %197, i32* %202, align 4
  br label %203

203:                                              ; preds = %100
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %12, align 4
  br label %94

206:                                              ; preds = %94
  br label %207

207:                                              ; preds = %206, %91
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  %212 = load i32, i32* %211, align 4
  %213 = sdiv i32 %212, 2
  %214 = load i32*, i32** %8, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32* %216, i32** %8, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = sdiv i32 %221, 2
  %223 = load i32*, i32** %9, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %9, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = sdiv i32 %230, 2
  %232 = load i32*, i32** %10, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %10, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 3
  %239 = load i32, i32* %238, align 4
  %240 = sdiv i32 %239, 2
  %241 = load i32*, i32** %11, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32* %243, i32** %11, align 8
  store i32 1, i32* %13, align 4
  br label %244

244:                                              ; preds = %597, %207
  %245 = load i32, i32* %13, align 4
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %600

250:                                              ; preds = %244
  %251 = load i32*, i32** %6, align 8
  %252 = call i64 @get_bits1(i32* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %290

254:                                              ; preds = %250
  store i32 0, i32* %12, align 4
  br label %255

255:                                              ; preds = %286, %254
  %256 = load i32, i32* %12, align 4
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %289

261:                                              ; preds = %255
  %262 = load i32*, i32** %6, align 8
  %263 = call i32 @get_bits(i32* %262, i32 10)
  %264 = load i32*, i32** %11, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  store i32 %263, i32* %267, align 4
  %268 = load i32*, i32** %6, align 8
  %269 = call i32 @get_bits(i32* %268, i32 10)
  %270 = load i32*, i32** %8, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  store i32 %269, i32* %273, align 4
  %274 = load i32*, i32** %6, align 8
  %275 = call i32 @get_bits(i32* %274, i32 10)
  %276 = load i32*, i32** %9, align 8
  %277 = load i32, i32* %12, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %275, i32* %279, align 4
  %280 = load i32*, i32** %6, align 8
  %281 = call i32 @get_bits(i32* %280, i32 10)
  %282 = load i32*, i32** %10, align 8
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  store i32 %281, i32* %285, align 4
  br label %286

286:                                              ; preds = %261
  %287 = load i32, i32* %12, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %12, align 4
  br label %255

289:                                              ; preds = %255
  br label %560

290:                                              ; preds = %250
  %291 = load i32*, i32** %8, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 0, %296
  %298 = sdiv i32 %297, 2
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %291, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  store i32 %301, i32* %302, align 16
  %303 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %301, i32* %303, align 16
  %304 = load i32*, i32** %9, align 8
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 0, %309
  %311 = sdiv i32 %310, 2
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %304, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  store i32 %314, i32* %315, align 4
  %316 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %314, i32* %316, align 4
  %317 = load i32*, i32** %10, align 8
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  %322 = load i32, i32* %321, align 4
  %323 = sub nsw i32 0, %322
  %324 = sdiv i32 %323, 2
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %317, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  store i32 %327, i32* %328, align 8
  %329 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %327, i32* %329, align 8
  %330 = load i32*, i32** %11, align 8
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 3
  %335 = load i32, i32* %334, align 4
  %336 = sub nsw i32 0, %335
  %337 = sdiv i32 %336, 2
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %330, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  store i32 %340, i32* %341, align 4
  %342 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  store i32 %340, i32* %342, align 4
  store i32 0, i32* %12, align 4
  br label %343

343:                                              ; preds = %556, %290
  %344 = load i32, i32* %12, align 4
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = icmp slt i32 %344, %347
  br i1 %348, label %349, label %559

349:                                              ; preds = %343
  %350 = load i32*, i32** %8, align 8
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 2
  %355 = load i32, i32* %354, align 4
  %356 = sub nsw i32 0, %355
  %357 = sdiv i32 %356, 2
  %358 = load i32, i32* %12, align 4
  %359 = add nsw i32 %357, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %350, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  store i32 %362, i32* %363, align 16
  %364 = load i32*, i32** %9, align 8
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 0
  %369 = load i32, i32* %368, align 4
  %370 = sub nsw i32 0, %369
  %371 = sdiv i32 %370, 2
  %372 = load i32, i32* %12, align 4
  %373 = add nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %364, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  store i32 %376, i32* %377, align 4
  %378 = load i32*, i32** %10, align 8
  %379 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 0
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 1
  %383 = load i32, i32* %382, align 4
  %384 = sub nsw i32 0, %383
  %385 = sdiv i32 %384, 2
  %386 = load i32, i32* %12, align 4
  %387 = add nsw i32 %385, %386
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %378, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  store i32 %390, i32* %391, align 8
  %392 = load i32*, i32** %11, align 8
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 0
  %395 = load i32*, i32** %394, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 3
  %397 = load i32, i32* %396, align 4
  %398 = sub nsw i32 0, %397
  %399 = sdiv i32 %398, 2
  %400 = load i32, i32* %12, align 4
  %401 = add nsw i32 %399, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %392, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  store i32 %404, i32* %405, align 4
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
  store i32 %419, i32* %25, align 4
  %420 = load i32*, i32** %6, align 8
  %421 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_7__*, %struct.TYPE_7__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i64 0
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i64 0
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @get_vlc2(i32* %420, i32 %426, i32 %432, i32 2)
  store i32 %433, i32* %22, align 4
  %434 = load i32*, i32** %6, align 8
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 0
  %437 = load %struct.TYPE_7__*, %struct.TYPE_7__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i64 1
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 0
  %443 = load %struct.TYPE_7__*, %struct.TYPE_7__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i64 1
  %445 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @get_vlc2(i32* %434, i32 %440, i32 %446, i32 2)
  store i32 %447, i32* %23, align 4
  %448 = load i32*, i32** %6, align 8
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 0
  %451 = load %struct.TYPE_7__*, %struct.TYPE_7__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i64 1
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 0
  %457 = load %struct.TYPE_7__*, %struct.TYPE_7__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i64 1
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = call i32 @get_vlc2(i32* %448, i32 %454, i32 %460, i32 2)
  store i32 %461, i32* %24, align 4
  %462 = load i32, i32* %25, align 4
  %463 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %464 = load i32, i32* %463, align 4
  %465 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  %466 = load i32, i32* %465, align 4
  %467 = add nsw i32 %464, %466
  %468 = mul nsw i32 3, %467
  %469 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  %470 = load i32, i32* %469, align 4
  %471 = mul nsw i32 2, %470
  %472 = sub nsw i32 %468, %471
  %473 = ashr i32 %472, 2
  %474 = add nsw i32 %462, %473
  %475 = and i32 %474, 1023
  %476 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  store i32 %475, i32* %476, align 4
  %477 = load i32*, i32** %11, align 8
  %478 = load i32, i32* %12, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %477, i64 %479
  store i32 %475, i32* %480, align 4
  %481 = load i32, i32* %22, align 4
  %482 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %483 = load i32, i32* %482, align 16
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %485 = load i32, i32* %484, align 16
  %486 = add nsw i32 %483, %485
  %487 = mul nsw i32 3, %486
  %488 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %489 = load i32, i32* %488, align 16
  %490 = mul nsw i32 2, %489
  %491 = sub nsw i32 %487, %490
  %492 = ashr i32 %491, 2
  %493 = add nsw i32 %481, %492
  %494 = and i32 %493, 1023
  %495 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  store i32 %494, i32* %495, align 16
  %496 = load i32*, i32** %8, align 8
  %497 = load i32, i32* %12, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %496, i64 %498
  store i32 %494, i32* %499, align 4
  %500 = load i32, i32* %22, align 4
  %501 = load i32, i32* %23, align 4
  %502 = add nsw i32 %500, %501
  %503 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %504 = load i32, i32* %503, align 4
  %505 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  %506 = load i32, i32* %505, align 4
  %507 = add nsw i32 %504, %506
  %508 = mul nsw i32 3, %507
  %509 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %510 = load i32, i32* %509, align 4
  %511 = mul nsw i32 2, %510
  %512 = sub nsw i32 %508, %511
  %513 = ashr i32 %512, 2
  %514 = add nsw i32 %502, %513
  %515 = and i32 %514, 1023
  %516 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  store i32 %515, i32* %516, align 4
  %517 = load i32*, i32** %9, align 8
  %518 = load i32, i32* %12, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  store i32 %515, i32* %520, align 4
  %521 = load i32, i32* %22, align 4
  %522 = load i32, i32* %23, align 4
  %523 = add nsw i32 %521, %522
  %524 = load i32, i32* %24, align 4
  %525 = add nsw i32 %523, %524
  %526 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %527 = load i32, i32* %526, align 8
  %528 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %529 = load i32, i32* %528, align 8
  %530 = add nsw i32 %527, %529
  %531 = mul nsw i32 3, %530
  %532 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %533 = load i32, i32* %532, align 8
  %534 = mul nsw i32 2, %533
  %535 = sub nsw i32 %531, %534
  %536 = ashr i32 %535, 2
  %537 = add nsw i32 %525, %536
  %538 = and i32 %537, 1023
  %539 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  store i32 %538, i32* %539, align 8
  %540 = load i32*, i32** %10, align 8
  %541 = load i32, i32* %12, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  store i32 %538, i32* %543, align 4
  %544 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 0
  %545 = load i32, i32* %544, align 16
  %546 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %545, i32* %546, align 16
  %547 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 1
  %548 = load i32, i32* %547, align 4
  %549 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %548, i32* %549, align 4
  %550 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 2
  %551 = load i32, i32* %550, align 8
  %552 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %551, i32* %552, align 8
  %553 = getelementptr inbounds [4 x i32], [4 x i32]* %21, i64 0, i64 3
  %554 = load i32, i32* %553, align 4
  %555 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  store i32 %554, i32* %555, align 4
  br label %556

556:                                              ; preds = %349
  %557 = load i32, i32* %12, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %12, align 4
  br label %343

559:                                              ; preds = %343
  br label %560

560:                                              ; preds = %559, %289
  %561 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %562 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %561, i32 0, i32 0
  %563 = load i32*, i32** %562, align 8
  %564 = getelementptr inbounds i32, i32* %563, i64 2
  %565 = load i32, i32* %564, align 4
  %566 = sdiv i32 %565, 2
  %567 = load i32*, i32** %8, align 8
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds i32, i32* %567, i64 %568
  store i32* %569, i32** %8, align 8
  %570 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %571 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %570, i32 0, i32 0
  %572 = load i32*, i32** %571, align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 0
  %574 = load i32, i32* %573, align 4
  %575 = sdiv i32 %574, 2
  %576 = load i32*, i32** %9, align 8
  %577 = sext i32 %575 to i64
  %578 = getelementptr inbounds i32, i32* %576, i64 %577
  store i32* %578, i32** %9, align 8
  %579 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %580 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %579, i32 0, i32 0
  %581 = load i32*, i32** %580, align 8
  %582 = getelementptr inbounds i32, i32* %581, i64 1
  %583 = load i32, i32* %582, align 4
  %584 = sdiv i32 %583, 2
  %585 = load i32*, i32** %10, align 8
  %586 = sext i32 %584 to i64
  %587 = getelementptr inbounds i32, i32* %585, i64 %586
  store i32* %587, i32** %10, align 8
  %588 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %589 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %588, i32 0, i32 0
  %590 = load i32*, i32** %589, align 8
  %591 = getelementptr inbounds i32, i32* %590, i64 3
  %592 = load i32, i32* %591, align 4
  %593 = sdiv i32 %592, 2
  %594 = load i32*, i32** %11, align 8
  %595 = sext i32 %593 to i64
  %596 = getelementptr inbounds i32, i32* %594, i64 %595
  store i32* %596, i32** %11, align 8
  br label %597

597:                                              ; preds = %560
  %598 = load i32, i32* %13, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %13, align 4
  br label %244

600:                                              ; preds = %244
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
