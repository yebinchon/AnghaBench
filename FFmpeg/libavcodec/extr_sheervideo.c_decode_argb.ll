; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_argb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_argb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i32* }

@__const.decode_argb.pred = private unnamed_addr constant [4 x i32] [i32 -128, i32 -128, i32 -128, i32 -128], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_argb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_argb(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
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
  %17 = alloca [4 x i32], align 16
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
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @get_bits1(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %74, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @get_bits(i32* %42, i32 8)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %46, 0
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @get_bits(i32* %50, i32 8)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32 %51, i32* %57, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @get_bits(i32* %58, i32 8)
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @get_bits(i32* %66, i32 8)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %69, 4
  %71 = add nsw i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %41
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %35

77:                                               ; preds = %35
  br label %201

78:                                               ; preds = %3
  %79 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %79, i8* align 16 bitcast ([4 x i32]* @__const.decode_argb.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %197, %78
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %200

86:                                               ; preds = %80
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @get_vlc2(i32* %87, i32 %93, i32 %99, i32 2)
  store i32 %100, i32* %12, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @get_vlc2(i32* %101, i32 %107, i32 %113, i32 2)
  store i32 %114, i32* %13, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @get_vlc2(i32* %115, i32 %121, i32 %127, i32 2)
  store i32 %128, i32* %14, align 4
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
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %12, align 4
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = add nsw i32 %143, %145
  %147 = and i32 %146, 255
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %147, i32* %148, align 16
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = mul nsw i32 4, %150
  %152 = add nsw i32 %151, 0
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  store i32 %147, i32* %154, align 4
  %155 = load i32, i32* %13, align 4
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %155, %157
  %159 = and i32 %158, 255
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %159, i32* %160, align 4
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = mul nsw i32 4, %162
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  store i32 %159, i32* %166, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %167, %168
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %169, %171
  %173 = and i32 %172, 255
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %173, i32* %174, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = mul nsw i32 4, %176
  %178 = add nsw i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  store i32 %173, i32* %180, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %183, %184
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %185, %187
  %189 = and i32 %188, 255
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %189, i32* %190, align 4
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = mul nsw i32 4, %192
  %194 = add nsw i32 %193, 3
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  store i32 %189, i32* %196, align 4
  br label %197

197:                                              ; preds = %86
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %80

200:                                              ; preds = %80
  br label %201

201:                                              ; preds = %200, %77
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %8, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32* %209, i32** %8, align 8
  store i32 1, i32* %10, align 4
  br label %210

210:                                              ; preds = %555, %201
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %558

216:                                              ; preds = %210
  %217 = load i32*, i32** %6, align 8
  %218 = call i64 @get_bits1(i32* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %264

220:                                              ; preds = %216
  store i32 0, i32* %9, align 4
  br label %221

221:                                              ; preds = %260, %220
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %263

227:                                              ; preds = %221
  %228 = load i32*, i32** %6, align 8
  %229 = call i32 @get_bits(i32* %228, i32 8)
  %230 = load i32*, i32** %8, align 8
  %231 = load i32, i32* %9, align 4
  %232 = mul nsw i32 %231, 4
  %233 = add nsw i32 %232, 0
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %230, i64 %234
  store i32 %229, i32* %235, align 4
  %236 = load i32*, i32** %6, align 8
  %237 = call i32 @get_bits(i32* %236, i32 8)
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* %9, align 4
  %240 = mul nsw i32 %239, 4
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %238, i64 %242
  store i32 %237, i32* %243, align 4
  %244 = load i32*, i32** %6, align 8
  %245 = call i32 @get_bits(i32* %244, i32 8)
  %246 = load i32*, i32** %8, align 8
  %247 = load i32, i32* %9, align 4
  %248 = mul nsw i32 %247, 4
  %249 = add nsw i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  store i32 %245, i32* %251, align 4
  %252 = load i32*, i32** %6, align 8
  %253 = call i32 @get_bits(i32* %252, i32 8)
  %254 = load i32*, i32** %8, align 8
  %255 = load i32, i32* %9, align 4
  %256 = mul nsw i32 %255, 4
  %257 = add nsw i32 %256, 3
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %254, i64 %258
  store i32 %253, i32* %259, align 4
  br label %260

260:                                              ; preds = %227
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %9, align 4
  br label %221

263:                                              ; preds = %221
  br label %546

264:                                              ; preds = %216
  %265 = load i32*, i32** %8, align 8
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 0, %270
  %272 = add nsw i32 %271, 0
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %265, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %275, i32* %276, align 16
  %277 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %275, i32* %277, align 16
  %278 = load i32*, i32** %8, align 8
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = sub nsw i32 0, %283
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %278, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %288, i32* %289, align 4
  %290 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %288, i32* %290, align 4
  %291 = load i32*, i32** %8, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 0, %296
  %298 = add nsw i32 %297, 2
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %291, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %301, i32* %302, align 8
  %303 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %301, i32* %303, align 8
  %304 = load i32*, i32** %8, align 8
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = sub nsw i32 0, %309
  %311 = add nsw i32 %310, 3
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %304, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  store i32 %314, i32* %315, align 4
  %316 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %314, i32* %316, align 4
  store i32 0, i32* %9, align 4
  br label %317

317:                                              ; preds = %542, %264
  %318 = load i32, i32* %9, align 4
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp slt i32 %318, %321
  br i1 %322, label %323, label %545

323:                                              ; preds = %317
  %324 = load i32*, i32** %8, align 8
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = sub nsw i32 0, %329
  %331 = load i32, i32* %9, align 4
  %332 = mul nsw i32 4, %331
  %333 = add nsw i32 %330, %332
  %334 = add nsw i32 %333, 0
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %324, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %337, i32* %338, align 16
  %339 = load i32*, i32** %8, align 8
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 1
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  %344 = load i32, i32* %343, align 4
  %345 = sub nsw i32 0, %344
  %346 = load i32, i32* %9, align 4
  %347 = mul nsw i32 4, %346
  %348 = add nsw i32 %345, %347
  %349 = add nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %339, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %352, i32* %353, align 4
  %354 = load i32*, i32** %8, align 8
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 0
  %359 = load i32, i32* %358, align 4
  %360 = sub nsw i32 0, %359
  %361 = load i32, i32* %9, align 4
  %362 = mul nsw i32 4, %361
  %363 = add nsw i32 %360, %362
  %364 = add nsw i32 %363, 2
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %354, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %367, i32* %368, align 8
  %369 = load i32*, i32** %8, align 8
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  %374 = load i32, i32* %373, align 4
  %375 = sub nsw i32 0, %374
  %376 = load i32, i32* %9, align 4
  %377 = mul nsw i32 4, %376
  %378 = add nsw i32 %375, %377
  %379 = add nsw i32 %378, 3
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %369, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store i32 %382, i32* %383, align 4
  %384 = load i32*, i32** %6, align 8
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i64 1
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_7__*, %struct.TYPE_7__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i64 1
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @get_vlc2(i32* %384, i32 %390, i32 %396, i32 2)
  store i32 %397, i32* %19, align 4
  %398 = load i32*, i32** %6, align 8
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %399, i32 0, i32 0
  %401 = load %struct.TYPE_7__*, %struct.TYPE_7__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %401, i64 0
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 0
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i64 0
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @get_vlc2(i32* %398, i32 %404, i32 %410, i32 2)
  store i32 %411, i32* %20, align 4
  %412 = load i32*, i32** %6, align 8
  %413 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_7__*, %struct.TYPE_7__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i64 1
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 0
  %421 = load %struct.TYPE_7__*, %struct.TYPE_7__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %421, i64 1
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @get_vlc2(i32* %412, i32 %418, i32 %424, i32 2)
  store i32 %425, i32* %21, align 4
  %426 = load i32*, i32** %6, align 8
  %427 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_7__*, %struct.TYPE_7__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %429, i64 1
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 0
  %435 = load %struct.TYPE_7__*, %struct.TYPE_7__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i64 1
  %437 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @get_vlc2(i32* %426, i32 %432, i32 %438, i32 2)
  store i32 %439, i32* %22, align 4
  %440 = load i32, i32* %19, align 4
  %441 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %442 = load i32, i32* %441, align 16
  %443 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %444 = load i32, i32* %443, align 16
  %445 = add nsw i32 %442, %444
  %446 = mul nsw i32 3, %445
  %447 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %448 = load i32, i32* %447, align 16
  %449 = mul nsw i32 2, %448
  %450 = sub nsw i32 %446, %449
  %451 = ashr i32 %450, 2
  %452 = add nsw i32 %440, %451
  %453 = and i32 %452, 255
  %454 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %453, i32* %454, align 16
  %455 = load i32*, i32** %8, align 8
  %456 = load i32, i32* %9, align 4
  %457 = mul nsw i32 4, %456
  %458 = add nsw i32 %457, 0
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %455, i64 %459
  store i32 %453, i32* %460, align 4
  %461 = load i32, i32* %20, align 4
  %462 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %463 = load i32, i32* %462, align 4
  %464 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %465 = load i32, i32* %464, align 4
  %466 = add nsw i32 %463, %465
  %467 = mul nsw i32 3, %466
  %468 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %469 = load i32, i32* %468, align 4
  %470 = mul nsw i32 2, %469
  %471 = sub nsw i32 %467, %470
  %472 = ashr i32 %471, 2
  %473 = add nsw i32 %461, %472
  %474 = and i32 %473, 255
  %475 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %474, i32* %475, align 4
  %476 = load i32*, i32** %8, align 8
  %477 = load i32, i32* %9, align 4
  %478 = mul nsw i32 4, %477
  %479 = add nsw i32 %478, 1
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %476, i64 %480
  store i32 %474, i32* %481, align 4
  %482 = load i32, i32* %20, align 4
  %483 = load i32, i32* %21, align 4
  %484 = add nsw i32 %482, %483
  %485 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %486 = load i32, i32* %485, align 8
  %487 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %488 = load i32, i32* %487, align 8
  %489 = add nsw i32 %486, %488
  %490 = mul nsw i32 3, %489
  %491 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %492 = load i32, i32* %491, align 8
  %493 = mul nsw i32 2, %492
  %494 = sub nsw i32 %490, %493
  %495 = ashr i32 %494, 2
  %496 = add nsw i32 %484, %495
  %497 = and i32 %496, 255
  %498 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %497, i32* %498, align 8
  %499 = load i32*, i32** %8, align 8
  %500 = load i32, i32* %9, align 4
  %501 = mul nsw i32 4, %500
  %502 = add nsw i32 %501, 2
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, i32* %499, i64 %503
  store i32 %497, i32* %504, align 4
  %505 = load i32, i32* %20, align 4
  %506 = load i32, i32* %21, align 4
  %507 = add nsw i32 %505, %506
  %508 = load i32, i32* %22, align 4
  %509 = add nsw i32 %507, %508
  %510 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %511 = load i32, i32* %510, align 4
  %512 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %513 = load i32, i32* %512, align 4
  %514 = add nsw i32 %511, %513
  %515 = mul nsw i32 3, %514
  %516 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %517 = load i32, i32* %516, align 4
  %518 = mul nsw i32 2, %517
  %519 = sub nsw i32 %515, %518
  %520 = ashr i32 %519, 2
  %521 = add nsw i32 %509, %520
  %522 = and i32 %521, 255
  %523 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  store i32 %522, i32* %523, align 4
  %524 = load i32*, i32** %8, align 8
  %525 = load i32, i32* %9, align 4
  %526 = mul nsw i32 4, %525
  %527 = add nsw i32 %526, 3
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32, i32* %524, i64 %528
  store i32 %522, i32* %529, align 4
  %530 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %531 = load i32, i32* %530, align 16
  %532 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %531, i32* %532, align 16
  %533 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %534 = load i32, i32* %533, align 4
  %535 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %534, i32* %535, align 4
  %536 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %537 = load i32, i32* %536, align 8
  %538 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %537, i32* %538, align 8
  %539 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  %540 = load i32, i32* %539, align 4
  %541 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %540, i32* %541, align 4
  br label %542

542:                                              ; preds = %323
  %543 = load i32, i32* %9, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %9, align 4
  br label %317

545:                                              ; preds = %317
  br label %546

546:                                              ; preds = %545, %263
  %547 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %548 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %547, i32 0, i32 1
  %549 = load i32*, i32** %548, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 0
  %551 = load i32, i32* %550, align 4
  %552 = load i32*, i32** %8, align 8
  %553 = sext i32 %551 to i64
  %554 = getelementptr inbounds i32, i32* %552, i64 %553
  store i32* %554, i32** %8, align 8
  br label %555

555:                                              ; preds = %546
  %556 = load i32, i32* %10, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %10, align 4
  br label %210

558:                                              ; preds = %210
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
