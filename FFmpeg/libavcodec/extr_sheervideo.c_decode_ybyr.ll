; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ybyr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ybyr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i64* }

@__const.decode_ybyr.pred = private unnamed_addr constant [4 x i32] [i32 -128, i32 128, i32 128, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_ybyr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ybyr(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
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
  br i1 %45, label %46, label %87

46:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %83, %46
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %86

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
  %62 = add nsw i32 %61, 128
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sdiv i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @get_bits(i32* %68, i32 8)
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @get_bits(i32* %75, i32 8)
  %77 = add nsw i32 %76, 128
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sdiv i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %77, i32* %82, align 4
  br label %83

83:                                               ; preds = %53
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %11, align 4
  br label %47

86:                                               ; preds = %47
  br label %199

87:                                               ; preds = %3
  %88 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %88, i8* align 16 bitcast ([4 x i32]* @__const.decode_ybyr.pred to i8*), i64 16, i1 false)
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %195, %87
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %198

95:                                               ; preds = %89
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @get_vlc2(i32* %96, i32 %102, i32 %108, i32 2)
  store i32 %109, i32* %14, align 4
  %110 = load i32*, i32** %6, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @get_vlc2(i32* %110, i32 %116, i32 %122, i32 2)
  store i32 %123, i32* %16, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @get_vlc2(i32* %124, i32 %130, i32 %136, i32 2)
  store i32 %137, i32* %15, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @get_vlc2(i32* %138, i32 %144, i32 %150, i32 2)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %14, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = add nsw i32 %152, %154
  %156 = and i32 %155, 255
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %156, i32* %157, align 16
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* %16, align 4
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %162, %164
  %166 = and i32 %165, 255
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %166, i32* %167, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sdiv i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %166, i32* %172, align 4
  %173 = load i32, i32* %15, align 4
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %175 = load i32, i32* %174, align 16
  %176 = add nsw i32 %173, %175
  %177 = and i32 %176, 255
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %177, i32* %178, align 16
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 %177, i32* %183, align 4
  %184 = load i32, i32* %17, align 4
  %185 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %184, %186
  %188 = and i32 %187, 255
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %188, i32* %189, align 8
  %190 = load i32*, i32** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sdiv i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %188, i32* %194, align 4
  br label %195

195:                                              ; preds = %95
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 2
  store i32 %197, i32* %11, align 4
  br label %89

198:                                              ; preds = %89
  br label %199

199:                                              ; preds = %198, %86
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  %204 = load i64, i64* %203, align 8
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 %204
  store i32* %206, i32** %8, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 1
  %211 = load i64, i64* %210, align 8
  %212 = load i32*, i32** %9, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 %211
  store i32* %213, i32** %9, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load i64*, i64** %215, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 2
  %218 = load i64, i64* %217, align 8
  %219 = load i32*, i32** %10, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 %218
  store i32* %220, i32** %10, align 8
  store i32 1, i32* %12, align 4
  br label %221

221:                                              ; preds = %534, %199
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %537

227:                                              ; preds = %221
  %228 = load i32*, i32** %6, align 8
  %229 = call i64 @get_bits1(i32* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %272

231:                                              ; preds = %227
  store i32 0, i32* %11, align 4
  br label %232

232:                                              ; preds = %268, %231
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %271

238:                                              ; preds = %232
  %239 = load i32*, i32** %6, align 8
  %240 = call i32 @get_bits(i32* %239, i32 8)
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  store i32 %240, i32* %244, align 4
  %245 = load i32*, i32** %6, align 8
  %246 = call i32 @get_bits(i32* %245, i32 8)
  %247 = add nsw i32 %246, 128
  %248 = load i32*, i32** %9, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sdiv i32 %249, 2
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  store i32 %247, i32* %252, align 4
  %253 = load i32*, i32** %6, align 8
  %254 = call i32 @get_bits(i32* %253, i32 8)
  %255 = load i32*, i32** %8, align 8
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  store i32 %254, i32* %259, align 4
  %260 = load i32*, i32** %6, align 8
  %261 = call i32 @get_bits(i32* %260, i32 8)
  %262 = add nsw i32 %261, 128
  %263 = load i32*, i32** %10, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sdiv i32 %264, 2
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  store i32 %262, i32* %267, align 4
  br label %268

268:                                              ; preds = %238
  %269 = load i32, i32* %11, align 4
  %270 = add nsw i32 %269, 2
  store i32 %270, i32* %11, align 4
  br label %232

271:                                              ; preds = %232
  br label %512

272:                                              ; preds = %227
  %273 = load i32*, i32** %8, align 8
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 1
  %276 = load i64*, i64** %275, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 0
  %278 = load i64, i64* %277, align 8
  %279 = sub i64 0, %278
  %280 = getelementptr inbounds i32, i32* %273, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %281, i32* %282, align 16
  %283 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %281, i32* %283, align 16
  %284 = load i32*, i32** %9, align 8
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 1
  %287 = load i64*, i64** %286, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 1
  %289 = load i64, i64* %288, align 8
  %290 = sub i64 0, %289
  %291 = getelementptr inbounds i32, i32* %284, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %292, i32* %293, align 4
  %294 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %292, i32* %294, align 4
  %295 = load i32*, i32** %10, align 8
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 1
  %298 = load i64*, i64** %297, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 2
  %300 = load i64, i64* %299, align 8
  %301 = sub i64 0, %300
  %302 = getelementptr inbounds i32, i32* %295, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %303, i32* %304, align 8
  %305 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %303, i32* %305, align 8
  store i32 0, i32* %11, align 4
  br label %306

306:                                              ; preds = %508, %272
  %307 = load i32, i32* %11, align 4
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp slt i32 %307, %310
  br i1 %311, label %312, label %511

312:                                              ; preds = %306
  %313 = load i32*, i32** %8, align 8
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 1
  %316 = load i64*, i64** %315, align 8
  %317 = getelementptr inbounds i64, i64* %316, i64 0
  %318 = load i64, i64* %317, align 8
  %319 = sub i64 0, %318
  %320 = load i32, i32* %11, align 4
  %321 = sext i32 %320 to i64
  %322 = add i64 %319, %321
  %323 = getelementptr inbounds i32, i32* %313, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  store i32 %324, i32* %325, align 16
  %326 = load i32*, i32** %8, align 8
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 1
  %329 = load i64*, i64** %328, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 0
  %331 = load i64, i64* %330, align 8
  %332 = sub i64 0, %331
  %333 = load i32, i32* %11, align 4
  %334 = sext i32 %333 to i64
  %335 = add i64 %332, %334
  %336 = add i64 %335, 1
  %337 = getelementptr inbounds i32, i32* %326, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  store i32 %338, i32* %339, align 4
  %340 = load i32*, i32** %9, align 8
  %341 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 1
  %343 = load i64*, i64** %342, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 1
  %345 = load i64, i64* %344, align 8
  %346 = sub i64 0, %345
  %347 = load i32, i32* %11, align 4
  %348 = sdiv i32 %347, 2
  %349 = sext i32 %348 to i64
  %350 = add i64 %346, %349
  %351 = getelementptr inbounds i32, i32* %340, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  store i32 %352, i32* %353, align 4
  %354 = load i32*, i32** %10, align 8
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  %357 = load i64*, i64** %356, align 8
  %358 = getelementptr inbounds i64, i64* %357, i64 2
  %359 = load i64, i64* %358, align 8
  %360 = sub i64 0, %359
  %361 = load i32, i32* %11, align 4
  %362 = sdiv i32 %361, 2
  %363 = sext i32 %362 to i64
  %364 = add i64 %360, %363
  %365 = getelementptr inbounds i32, i32* %354, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  store i32 %366, i32* %367, align 8
  %368 = load i32*, i32** %6, align 8
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i64 0
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i64 0
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @get_vlc2(i32* %368, i32 %374, i32 %380, i32 2)
  store i32 %381, i32* %21, align 4
  %382 = load i32*, i32** %6, align 8
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i64 1
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 0
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i64 1
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @get_vlc2(i32* %382, i32 %388, i32 %394, i32 2)
  store i32 %395, i32* %23, align 4
  %396 = load i32*, i32** %6, align 8
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i64 0
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i64 0
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @get_vlc2(i32* %396, i32 %402, i32 %408, i32 2)
  store i32 %409, i32* %22, align 4
  %410 = load i32*, i32** %6, align 8
  %411 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_7__*, %struct.TYPE_7__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i64 1
  %415 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 0
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i64 1
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @get_vlc2(i32* %410, i32 %416, i32 %422, i32 2)
  store i32 %423, i32* %24, align 4
  %424 = load i32, i32* %21, align 4
  %425 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %426 = load i32, i32* %425, align 16
  %427 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %428 = load i32, i32* %427, align 16
  %429 = add nsw i32 %426, %428
  %430 = mul nsw i32 3, %429
  %431 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %432 = load i32, i32* %431, align 16
  %433 = mul nsw i32 2, %432
  %434 = sub nsw i32 %430, %433
  %435 = ashr i32 %434, 2
  %436 = add nsw i32 %424, %435
  %437 = and i32 %436, 255
  %438 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %437, i32* %438, align 16
  %439 = load i32*, i32** %8, align 8
  %440 = load i32, i32* %11, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  store i32 %437, i32* %442, align 4
  %443 = load i32, i32* %23, align 4
  %444 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %445 = load i32, i32* %444, align 4
  %446 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %447 = load i32, i32* %446, align 4
  %448 = sub nsw i32 %445, %447
  %449 = ashr i32 %448, 1
  %450 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  %451 = load i32, i32* %450, align 4
  %452 = add nsw i32 %449, %451
  %453 = add nsw i32 %443, %452
  %454 = and i32 %453, 255
  %455 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %454, i32* %455, align 4
  %456 = load i32*, i32** %9, align 8
  %457 = load i32, i32* %11, align 4
  %458 = sdiv i32 %457, 2
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %456, i64 %459
  store i32 %454, i32* %460, align 4
  %461 = load i32, i32* %22, align 4
  %462 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  %463 = load i32, i32* %462, align 4
  %464 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %465 = load i32, i32* %464, align 16
  %466 = add nsw i32 %463, %465
  %467 = mul nsw i32 3, %466
  %468 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0
  %469 = load i32, i32* %468, align 16
  %470 = mul nsw i32 2, %469
  %471 = sub nsw i32 %467, %470
  %472 = ashr i32 %471, 2
  %473 = add nsw i32 %461, %472
  %474 = and i32 %473, 255
  %475 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %474, i32* %475, align 16
  %476 = load i32*, i32** %8, align 8
  %477 = load i32, i32* %11, align 4
  %478 = add nsw i32 %477, 1
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %476, i64 %479
  store i32 %474, i32* %480, align 4
  %481 = load i32, i32* %24, align 4
  %482 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %483 = load i32, i32* %482, align 8
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %485 = load i32, i32* %484, align 8
  %486 = sub nsw i32 %483, %485
  %487 = ashr i32 %486, 1
  %488 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %489 = load i32, i32* %488, align 8
  %490 = add nsw i32 %487, %489
  %491 = add nsw i32 %481, %490
  %492 = and i32 %491, 255
  %493 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %492, i32* %493, align 8
  %494 = load i32*, i32** %10, align 8
  %495 = load i32, i32* %11, align 4
  %496 = sdiv i32 %495, 2
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %494, i64 %497
  store i32 %492, i32* %498, align 4
  %499 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 3
  %500 = load i32, i32* %499, align 4
  %501 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %500, i32* %501, align 16
  %502 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 1
  %503 = load i32, i32* %502, align 4
  %504 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %503, i32* %504, align 4
  %505 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 2
  %506 = load i32, i32* %505, align 8
  %507 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %506, i32* %507, align 8
  br label %508

508:                                              ; preds = %312
  %509 = load i32, i32* %11, align 4
  %510 = add nsw i32 %509, 2
  store i32 %510, i32* %11, align 4
  br label %306

511:                                              ; preds = %306
  br label %512

512:                                              ; preds = %511, %271
  %513 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 1
  %515 = load i64*, i64** %514, align 8
  %516 = getelementptr inbounds i64, i64* %515, i64 0
  %517 = load i64, i64* %516, align 8
  %518 = load i32*, i32** %8, align 8
  %519 = getelementptr inbounds i32, i32* %518, i64 %517
  store i32* %519, i32** %8, align 8
  %520 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 1
  %522 = load i64*, i64** %521, align 8
  %523 = getelementptr inbounds i64, i64* %522, i64 1
  %524 = load i64, i64* %523, align 8
  %525 = load i32*, i32** %9, align 8
  %526 = getelementptr inbounds i32, i32* %525, i64 %524
  store i32* %526, i32** %9, align 8
  %527 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %528 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %527, i32 0, i32 1
  %529 = load i64*, i64** %528, align 8
  %530 = getelementptr inbounds i64, i64* %529, i64 2
  %531 = load i64, i64* %530, align 8
  %532 = load i32*, i32** %10, align 8
  %533 = getelementptr inbounds i32, i32* %532, i64 %531
  store i32* %533, i32** %10, align 8
  br label %534

534:                                              ; preds = %512
  %535 = load i32, i32* %12, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %12, align 4
  br label %221

537:                                              ; preds = %221
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
