; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ybr10.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ybr10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i64* }

@__const.decode_ybr10.pred = private unnamed_addr constant [4 x i32] [i32 502, i32 512, i32 512, i32 512], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_ybr10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ybr10(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
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
  %17 = alloca [4 x i32], align 16
  %18 = alloca [4 x i32], align 16
  %19 = alloca [4 x i32], align 16
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
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @get_bits1(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %73, %47
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %48
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @get_bits(i32* %55, i32 10)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @get_bits(i32* %61, i32 10)
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @get_bits(i32* %67, i32 10)
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %54
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %48

76:                                               ; preds = %48
  br label %162

77:                                               ; preds = %3
  %78 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %78, i8* align 16 bitcast ([4 x i32]* @__const.decode_ybr10.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %158, %77
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %161

85:                                               ; preds = %79
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @get_vlc2(i32* %86, i32 %92, i32 %98, i32 2)
  store i32 %99, i32* %14, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @get_vlc2(i32* %100, i32 %106, i32 %112, i32 2)
  store i32 %113, i32* %15, align 4
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @get_vlc2(i32* %114, i32 %120, i32 %126, i32 2)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %14, align 4
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = add nsw i32 %128, %130
  %132 = and i32 %131, 1023
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %132, i32* %133, align 16
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %132, i32* %137, align 4
  %138 = load i32, i32* %15, align 4
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %138, %140
  %142 = and i32 %141, 1023
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %142, i32* %143, align 4
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load i32, i32* %16, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %148, %150
  %152 = and i32 %151, 1023
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %152, i32* %153, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %152, i32* %157, align 4
  br label %158

158:                                              ; preds = %85
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %79

161:                                              ; preds = %79
  br label %162

162:                                              ; preds = %161, %76
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = sdiv i32 %167, 2
  %169 = load i32*, i32** %8, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %8, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = sdiv i32 %176, 2
  %178 = load i32*, i32** %9, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32* %180, i32** %9, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = sdiv i32 %185, 2
  %187 = load i32*, i32** %10, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %10, align 8
  store i32 1, i32* %12, align 4
  br label %190

190:                                              ; preds = %459, %162
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %462

196:                                              ; preds = %190
  %197 = load i32*, i32** %6, align 8
  %198 = call i64 @get_bits1(i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %230

200:                                              ; preds = %196
  store i32 0, i32* %11, align 4
  br label %201

201:                                              ; preds = %226, %200
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %229

207:                                              ; preds = %201
  %208 = load i32*, i32** %6, align 8
  %209 = call i32 @get_bits(i32* %208, i32 10)
  %210 = load i32*, i32** %8, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %209, i32* %213, align 4
  %214 = load i32*, i32** %6, align 8
  %215 = call i32 @get_bits(i32* %214, i32 10)
  %216 = load i32*, i32** %9, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 @get_bits(i32* %220, i32 10)
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %221, i32* %225, align 4
  br label %226

226:                                              ; preds = %207
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %11, align 4
  br label %201

229:                                              ; preds = %201
  br label %431

230:                                              ; preds = %196
  %231 = load i32*, i32** %8, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 0, %236
  %238 = sdiv i32 %237, 2
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %231, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %241, i32* %242, align 16
  %243 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %241, i32* %243, align 16
  %244 = load i32*, i32** %9, align 8
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 0, %249
  %251 = sdiv i32 %250, 2
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %244, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %254, i32* %255, align 4
  %256 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %254, i32* %256, align 4
  %257 = load i32*, i32** %10, align 8
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 2
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 0, %262
  %264 = sdiv i32 %263, 2
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %257, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %267, i32* %268, align 8
  %269 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %267, i32* %269, align 8
  store i32 0, i32* %11, align 4
  br label %270

270:                                              ; preds = %427, %230
  %271 = load i32, i32* %11, align 4
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp slt i32 %271, %274
  br i1 %275, label %276, label %430

276:                                              ; preds = %270
  %277 = load i32*, i32** %8, align 8
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 0, %282
  %284 = sdiv i32 %283, 2
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %277, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %289, i32* %290, align 16
  %291 = load i32*, i32** %9, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 0, %296
  %298 = sdiv i32 %297, 2
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %298, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %291, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %303, i32* %304, align 4
  %305 = load i32*, i32** %10, align 8
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 2
  %310 = load i32, i32* %309, align 4
  %311 = sub nsw i32 0, %310
  %312 = sdiv i32 %311, 2
  %313 = load i32, i32* %11, align 4
  %314 = add nsw i32 %312, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %305, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %317, i32* %318, align 8
  %319 = load i32*, i32** %6, align 8
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i64 0
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i64 0
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @get_vlc2(i32* %319, i32 %325, i32 %331, i32 2)
  store i32 %332, i32* %20, align 4
  %333 = load i32*, i32** %6, align 8
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i64 1
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i64 1
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @get_vlc2(i32* %333, i32 %339, i32 %345, i32 2)
  store i32 %346, i32* %21, align 4
  %347 = load i32*, i32** %6, align 8
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i64 1
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i64 1
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @get_vlc2(i32* %347, i32 %353, i32 %359, i32 2)
  store i32 %360, i32* %22, align 4
  %361 = load i32, i32* %20, align 4
  %362 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %363 = load i32, i32* %362, align 16
  %364 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %365 = load i32, i32* %364, align 16
  %366 = add nsw i32 %363, %365
  %367 = mul nsw i32 3, %366
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %369 = load i32, i32* %368, align 16
  %370 = mul nsw i32 2, %369
  %371 = sub nsw i32 %367, %370
  %372 = ashr i32 %371, 2
  %373 = add nsw i32 %361, %372
  %374 = and i32 %373, 1023
  %375 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %374, i32* %375, align 16
  %376 = load i32*, i32** %8, align 8
  %377 = load i32, i32* %11, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  store i32 %374, i32* %379, align 4
  %380 = load i32, i32* %21, align 4
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %382 = load i32, i32* %381, align 4
  %383 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %384 = load i32, i32* %383, align 4
  %385 = add nsw i32 %382, %384
  %386 = mul nsw i32 3, %385
  %387 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %388 = load i32, i32* %387, align 4
  %389 = mul nsw i32 2, %388
  %390 = sub nsw i32 %386, %389
  %391 = ashr i32 %390, 2
  %392 = add nsw i32 %380, %391
  %393 = and i32 %392, 1023
  %394 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %393, i32* %394, align 4
  %395 = load i32*, i32** %9, align 8
  %396 = load i32, i32* %11, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  store i32 %393, i32* %398, align 4
  %399 = load i32, i32* %22, align 4
  %400 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %401 = load i32, i32* %400, align 8
  %402 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %403 = load i32, i32* %402, align 8
  %404 = add nsw i32 %401, %403
  %405 = mul nsw i32 3, %404
  %406 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %407 = load i32, i32* %406, align 8
  %408 = mul nsw i32 2, %407
  %409 = sub nsw i32 %405, %408
  %410 = ashr i32 %409, 2
  %411 = add nsw i32 %399, %410
  %412 = and i32 %411, 1023
  %413 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %412, i32* %413, align 8
  %414 = load i32*, i32** %10, align 8
  %415 = load i32, i32* %11, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  store i32 %412, i32* %417, align 4
  %418 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %419 = load i32, i32* %418, align 16
  %420 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %419, i32* %420, align 16
  %421 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %422 = load i32, i32* %421, align 4
  %423 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %422, i32* %423, align 4
  %424 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %425 = load i32, i32* %424, align 8
  %426 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %425, i32* %426, align 8
  br label %427

427:                                              ; preds = %276
  %428 = load i32, i32* %11, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %11, align 4
  br label %270

430:                                              ; preds = %270
  br label %431

431:                                              ; preds = %430, %229
  %432 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %432, i32 0, i32 0
  %434 = load i32*, i32** %433, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 0
  %436 = load i32, i32* %435, align 4
  %437 = sdiv i32 %436, 2
  %438 = load i32*, i32** %8, align 8
  %439 = sext i32 %437 to i64
  %440 = getelementptr inbounds i32, i32* %438, i64 %439
  store i32* %440, i32** %8, align 8
  %441 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 0
  %443 = load i32*, i32** %442, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 1
  %445 = load i32, i32* %444, align 4
  %446 = sdiv i32 %445, 2
  %447 = load i32*, i32** %9, align 8
  %448 = sext i32 %446 to i64
  %449 = getelementptr inbounds i32, i32* %447, i64 %448
  store i32* %449, i32** %9, align 8
  %450 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %450, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 2
  %454 = load i32, i32* %453, align 4
  %455 = sdiv i32 %454, 2
  %456 = load i32*, i32** %10, align 8
  %457 = sext i32 %455 to i64
  %458 = getelementptr inbounds i32, i32* %456, i64 %457
  store i32* %458, i32** %10, align 8
  br label %459

459:                                              ; preds = %431
  %460 = load i32, i32* %12, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %12, align 4
  br label %190

462:                                              ; preds = %190
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
