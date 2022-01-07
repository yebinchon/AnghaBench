; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_rgbx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_rgbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32*, i64* }

@__const.decode_rgbx.pred = private unnamed_addr constant [4 x i32] [i32 512, i32 512, i32 512, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_rgbx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_rgbx(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
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
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %8, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
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
  br label %168

77:                                               ; preds = %3
  %78 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %78, i8* align 16 bitcast ([4 x i32]* @__const.decode_rgbx.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %164, %77
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %167

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
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %138, %139
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %140, %142
  %144 = and i32 %143, 1023
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %144, i32* %145, align 4
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %144, i32* %149, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %152, %153
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %154, %156
  %158 = and i32 %157, 1023
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %158, i32* %159, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %158, i32* %163, align 4
  br label %164

164:                                              ; preds = %85
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %79

167:                                              ; preds = %79
  br label %168

168:                                              ; preds = %167, %76
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = sdiv i32 %173, 2
  %175 = load i32*, i32** %8, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %8, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = sdiv i32 %182, 2
  %184 = load i32*, i32** %9, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32* %186, i32** %9, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = sdiv i32 %191, 2
  %193 = load i32*, i32** %10, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32* %195, i32** %10, align 8
  store i32 1, i32* %12, align 4
  br label %196

196:                                              ; preds = %471, %168
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %474

202:                                              ; preds = %196
  %203 = load i32*, i32** %6, align 8
  %204 = call i64 @get_bits1(i32* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %236

206:                                              ; preds = %202
  store i32 0, i32* %11, align 4
  br label %207

207:                                              ; preds = %232, %206
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp slt i32 %208, %211
  br i1 %212, label %213, label %235

213:                                              ; preds = %207
  %214 = load i32*, i32** %6, align 8
  %215 = call i32 @get_bits(i32* %214, i32 10)
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 @get_bits(i32* %220, i32 10)
  %222 = load i32*, i32** %9, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %221, i32* %225, align 4
  %226 = load i32*, i32** %6, align 8
  %227 = call i32 @get_bits(i32* %226, i32 10)
  %228 = load i32*, i32** %10, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %227, i32* %231, align 4
  br label %232

232:                                              ; preds = %213
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %207

235:                                              ; preds = %207
  br label %443

236:                                              ; preds = %202
  %237 = load i32*, i32** %8, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 0, %242
  %244 = sdiv i32 %243, 2
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %237, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %247, i32* %248, align 16
  %249 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %247, i32* %249, align 16
  %250 = load i32*, i32** %9, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 0, %255
  %257 = sdiv i32 %256, 2
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %250, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %260, i32* %261, align 4
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %260, i32* %262, align 4
  %263 = load i32*, i32** %10, align 8
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 0, %268
  %270 = sdiv i32 %269, 2
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %263, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %273, i32* %274, align 8
  %275 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %273, i32* %275, align 8
  store i32 0, i32* %11, align 4
  br label %276

276:                                              ; preds = %439, %236
  %277 = load i32, i32* %11, align 4
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp slt i32 %277, %280
  br i1 %281, label %282, label %442

282:                                              ; preds = %276
  %283 = load i32*, i32** %8, align 8
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 2
  %288 = load i32, i32* %287, align 4
  %289 = sub nsw i32 0, %288
  %290 = sdiv i32 %289, 2
  %291 = load i32, i32* %11, align 4
  %292 = add nsw i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %283, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %295, i32* %296, align 16
  %297 = load i32*, i32** %9, align 8
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 0, %302
  %304 = sdiv i32 %303, 2
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 %304, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %297, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %309, i32* %310, align 4
  %311 = load i32*, i32** %10, align 8
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = sub nsw i32 0, %316
  %318 = sdiv i32 %317, 2
  %319 = load i32, i32* %11, align 4
  %320 = add nsw i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %311, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %323, i32* %324, align 8
  %325 = load i32*, i32** %6, align 8
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i64 0
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i64 0
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @get_vlc2(i32* %325, i32 %331, i32 %337, i32 2)
  store i32 %338, i32* %20, align 4
  %339 = load i32*, i32** %6, align 8
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i64 1
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i64 1
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @get_vlc2(i32* %339, i32 %345, i32 %351, i32 2)
  store i32 %352, i32* %21, align 4
  %353 = load i32*, i32** %6, align 8
  %354 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i64 1
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i64 1
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @get_vlc2(i32* %353, i32 %359, i32 %365, i32 2)
  store i32 %366, i32* %22, align 4
  %367 = load i32, i32* %20, align 4
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %369 = load i32, i32* %368, align 16
  %370 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %371 = load i32, i32* %370, align 16
  %372 = add nsw i32 %369, %371
  %373 = mul nsw i32 3, %372
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %375 = load i32, i32* %374, align 16
  %376 = mul nsw i32 2, %375
  %377 = sub nsw i32 %373, %376
  %378 = ashr i32 %377, 2
  %379 = add nsw i32 %367, %378
  %380 = and i32 %379, 1023
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %380, i32* %381, align 16
  %382 = load i32*, i32** %8, align 8
  %383 = load i32, i32* %11, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  store i32 %380, i32* %385, align 4
  %386 = load i32, i32* %20, align 4
  %387 = load i32, i32* %21, align 4
  %388 = add nsw i32 %386, %387
  %389 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %390 = load i32, i32* %389, align 4
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %390, %392
  %394 = mul nsw i32 3, %393
  %395 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %396 = load i32, i32* %395, align 4
  %397 = mul nsw i32 2, %396
  %398 = sub nsw i32 %394, %397
  %399 = ashr i32 %398, 2
  %400 = add nsw i32 %388, %399
  %401 = and i32 %400, 1023
  %402 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %401, i32* %402, align 4
  %403 = load i32*, i32** %9, align 8
  %404 = load i32, i32* %11, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %403, i64 %405
  store i32 %401, i32* %406, align 4
  %407 = load i32, i32* %20, align 4
  %408 = load i32, i32* %21, align 4
  %409 = add nsw i32 %407, %408
  %410 = load i32, i32* %22, align 4
  %411 = add nsw i32 %409, %410
  %412 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %413 = load i32, i32* %412, align 8
  %414 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %415 = load i32, i32* %414, align 8
  %416 = add nsw i32 %413, %415
  %417 = mul nsw i32 3, %416
  %418 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %419 = load i32, i32* %418, align 8
  %420 = mul nsw i32 2, %419
  %421 = sub nsw i32 %417, %420
  %422 = ashr i32 %421, 2
  %423 = add nsw i32 %411, %422
  %424 = and i32 %423, 1023
  %425 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %424, i32* %425, align 8
  %426 = load i32*, i32** %10, align 8
  %427 = load i32, i32* %11, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  store i32 %424, i32* %429, align 4
  %430 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %431 = load i32, i32* %430, align 16
  %432 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %431, i32* %432, align 16
  %433 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %434 = load i32, i32* %433, align 4
  %435 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %434, i32* %435, align 4
  %436 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %437 = load i32, i32* %436, align 8
  %438 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %437, i32* %438, align 8
  br label %439

439:                                              ; preds = %282
  %440 = load i32, i32* %11, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %11, align 4
  br label %276

442:                                              ; preds = %276
  br label %443

443:                                              ; preds = %442, %235
  %444 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %444, i32 0, i32 0
  %446 = load i32*, i32** %445, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 2
  %448 = load i32, i32* %447, align 4
  %449 = sdiv i32 %448, 2
  %450 = load i32*, i32** %8, align 8
  %451 = sext i32 %449 to i64
  %452 = getelementptr inbounds i32, i32* %450, i64 %451
  store i32* %452, i32** %8, align 8
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 0
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 0
  %457 = load i32, i32* %456, align 4
  %458 = sdiv i32 %457, 2
  %459 = load i32*, i32** %9, align 8
  %460 = sext i32 %458 to i64
  %461 = getelementptr inbounds i32, i32* %459, i64 %460
  store i32* %461, i32** %9, align 8
  %462 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 0
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 1
  %466 = load i32, i32* %465, align 4
  %467 = sdiv i32 %466, 2
  %468 = load i32*, i32** %10, align 8
  %469 = sext i32 %467 to i64
  %470 = getelementptr inbounds i32, i32* %468, i64 %469
  store i32* %470, i32** %10, align 8
  br label %471

471:                                              ; preds = %443
  %472 = load i32, i32* %12, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %12, align 4
  br label %196

474:                                              ; preds = %196
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
