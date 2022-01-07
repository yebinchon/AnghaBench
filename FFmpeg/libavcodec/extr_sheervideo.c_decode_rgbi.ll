; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_rgbi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_rgbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i32* }

@__const.decode_rgbi.pred = private unnamed_addr constant [4 x i32] [i32 -128, i32 -128, i32 -128, i32 -128], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_rgbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_rgbi(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @get_bits1(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %62, %30
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @get_bits(i32* %38, i32 8)
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %41, 4
  %43 = add nsw i32 %42, 0
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @get_bits(i32* %46, i32 8)
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %49, 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @get_bits(i32* %54, i32 8)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %37
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %31

65:                                               ; preds = %31
  br label %163

66:                                               ; preds = %3
  %67 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %67, i8* align 16 bitcast ([4 x i32]* @__const.decode_rgbi.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %159, %66
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %162

74:                                               ; preds = %68
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @get_vlc2(i32* %75, i32 %81, i32 %87, i32 2)
  store i32 %88, i32* %12, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @get_vlc2(i32* %89, i32 %95, i32 %101, i32 2)
  store i32 %102, i32* %13, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @get_vlc2(i32* %103, i32 %109, i32 %115, i32 2)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %12, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %119 = load i32, i32* %118, align 16
  %120 = add nsw i32 %117, %119
  %121 = and i32 %120, 255
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %121, i32* %122, align 16
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = mul nsw i32 4, %124
  %126 = add nsw i32 %125, 0
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  store i32 %121, i32* %128, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %129, %130
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %131, %133
  %135 = and i32 %134, 255
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %135, i32* %136, align 4
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = mul nsw i32 4, %138
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  store i32 %135, i32* %142, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %145, %146
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %147, %149
  %151 = and i32 %150, 255
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %151, i32* %152, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %9, align 4
  %155 = mul nsw i32 4, %154
  %156 = add nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  store i32 %151, i32* %158, align 4
  br label %159

159:                                              ; preds = %74
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %68

162:                                              ; preds = %68
  br label %163

163:                                              ; preds = %162, %65
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %8, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %8, align 8
  store i32 1, i32* %10, align 4
  br label %172

172:                                              ; preds = %359, %163
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %362

178:                                              ; preds = %172
  %179 = load i32*, i32** %6, align 8
  %180 = call i64 @get_bits1(i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %218

182:                                              ; preds = %178
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %214, %182
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %217

189:                                              ; preds = %183
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @get_bits(i32* %190, i32 8)
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %9, align 4
  %194 = mul nsw i32 %193, 4
  %195 = add nsw i32 %194, 0
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  store i32 %191, i32* %197, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 @get_bits(i32* %198, i32 8)
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %9, align 4
  %202 = mul nsw i32 %201, 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %200, i64 %204
  store i32 %199, i32* %205, align 4
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @get_bits(i32* %206, i32 8)
  %208 = load i32*, i32** %8, align 8
  %209 = load i32, i32* %9, align 4
  %210 = mul nsw i32 %209, 4
  %211 = add nsw i32 %210, 2
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %208, i64 %212
  store i32 %207, i32* %213, align 4
  br label %214

214:                                              ; preds = %189
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  br label %183

217:                                              ; preds = %183
  br label %350

218:                                              ; preds = %178
  %219 = load i32*, i32** %8, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 0, %224
  %226 = add nsw i32 %225, 0
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %219, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %229, i32* %230, align 16
  %231 = load i32*, i32** %8, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 0, %236
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %231, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %241, i32* %242, align 4
  %243 = load i32*, i32** %8, align 8
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 0, %248
  %250 = add nsw i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %243, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %253, i32* %254, align 8
  store i32 0, i32* %9, align 4
  br label %255

255:                                              ; preds = %346, %218
  %256 = load i32, i32* %9, align 4
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %349

261:                                              ; preds = %255
  %262 = load i32*, i32** %6, align 8
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i64 0
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i64 0
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @get_vlc2(i32* %262, i32 %268, i32 %274, i32 2)
  store i32 %275, i32* %16, align 4
  %276 = load i32*, i32** %6, align 8
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i64 1
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i64 1
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @get_vlc2(i32* %276, i32 %282, i32 %288, i32 2)
  store i32 %289, i32* %17, align 4
  %290 = load i32*, i32** %6, align 8
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i64 1
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i64 1
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @get_vlc2(i32* %290, i32 %296, i32 %302, i32 2)
  store i32 %303, i32* %18, align 4
  %304 = load i32, i32* %16, align 4
  %305 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %306 = load i32, i32* %305, align 16
  %307 = add nsw i32 %304, %306
  %308 = and i32 %307, 255
  %309 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %308, i32* %309, align 16
  %310 = load i32*, i32** %8, align 8
  %311 = load i32, i32* %9, align 4
  %312 = mul nsw i32 4, %311
  %313 = add nsw i32 %312, 0
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %310, i64 %314
  store i32 %308, i32* %315, align 4
  %316 = load i32, i32* %16, align 4
  %317 = load i32, i32* %17, align 4
  %318 = add nsw i32 %316, %317
  %319 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %318, %320
  %322 = and i32 %321, 255
  %323 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %322, i32* %323, align 4
  %324 = load i32*, i32** %8, align 8
  %325 = load i32, i32* %9, align 4
  %326 = mul nsw i32 4, %325
  %327 = add nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %324, i64 %328
  store i32 %322, i32* %329, align 4
  %330 = load i32, i32* %16, align 4
  %331 = load i32, i32* %17, align 4
  %332 = add nsw i32 %330, %331
  %333 = load i32, i32* %18, align 4
  %334 = add nsw i32 %332, %333
  %335 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %334, %336
  %338 = and i32 %337, 255
  %339 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %338, i32* %339, align 8
  %340 = load i32*, i32** %8, align 8
  %341 = load i32, i32* %9, align 4
  %342 = mul nsw i32 4, %341
  %343 = add nsw i32 %342, 2
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %340, i64 %344
  store i32 %338, i32* %345, align 4
  br label %346

346:                                              ; preds = %261
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %9, align 4
  br label %255

349:                                              ; preds = %255
  br label %350

350:                                              ; preds = %349, %217
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32*, i32** %8, align 8
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds i32, i32* %356, i64 %357
  store i32* %358, i32** %8, align 8
  br label %359

359:                                              ; preds = %350
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %10, align 4
  br label %172

362:                                              ; preds = %172
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
