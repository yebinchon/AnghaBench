; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ybr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sheervideo.c_decode_ybr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32**, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*)* @decode_ybr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ybr(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
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
  br i1 %43, label %44, label %74

44:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %73

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
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @get_bits(i32* %64, i32 8)
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %51
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %45

73:                                               ; preds = %45
  br label %168

74:                                               ; preds = %3
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 125, i32 -146
  store i32 %81, i32* %75, align 4
  %82 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 -128, i32* %82, align 4
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 -128, i32* %83, align 4
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 -128, i32* %84, align 4
  store i32 0, i32* %11, align 4
  br label %85

85:                                               ; preds = %164, %74
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %167

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
  store i32 %119, i32* %15, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @get_vlc2(i32* %120, i32 %126, i32 %132, i32 2)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %14, align 4
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = add nsw i32 %134, %136
  %138 = and i32 %137, 255
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  store i32 %138, i32* %139, align 16
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %138, i32* %143, align 4
  %144 = load i32, i32* %15, align 4
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %144, %146
  %148 = and i32 %147, 255
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %148, i32* %153, align 4
  %154 = load i32, i32* %16, align 4
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %154, %156
  %158 = and i32 %157, 255
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  store i32 %158, i32* %159, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %158, i32* %163, align 4
  br label %164

164:                                              ; preds = %91
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %85

167:                                              ; preds = %85
  br label %168

168:                                              ; preds = %167, %73
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 %173
  store i32* %175, i32** %8, align 8
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 1
  %180 = load i64, i64* %179, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 %180
  store i32* %182, i32** %9, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 2
  %187 = load i64, i64* %186, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 %187
  store i32* %189, i32** %10, align 8
  store i32 1, i32* %12, align 4
  br label %190

190:                                              ; preds = %444, %168
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %447

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
  %209 = call i32 @get_bits(i32* %208, i32 8)
  %210 = load i32*, i32** %8, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %209, i32* %213, align 4
  %214 = load i32*, i32** %6, align 8
  %215 = call i32 @get_bits(i32* %214, i32 8)
  %216 = load i32*, i32** %9, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 @get_bits(i32* %220, i32 8)
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
  br label %422

230:                                              ; preds = %196
  %231 = load i32*, i32** %8, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 0
  %236 = load i64, i64* %235, align 8
  %237 = sub i64 0, %236
  %238 = getelementptr inbounds i32, i32* %231, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %239, i32* %240, align 16
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %239, i32* %241, align 16
  %242 = load i32*, i32** %9, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 1
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 1
  %247 = load i64, i64* %246, align 8
  %248 = sub i64 0, %247
  %249 = getelementptr inbounds i32, i32* %242, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %250, i32* %251, align 4
  %252 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %250, i32* %252, align 4
  %253 = load i32*, i32** %10, align 8
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 1
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 2
  %258 = load i64, i64* %257, align 8
  %259 = sub i64 0, %258
  %260 = getelementptr inbounds i32, i32* %253, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %261, i32* %262, align 8
  %263 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %261, i32* %263, align 8
  store i32 0, i32* %11, align 4
  br label %264

264:                                              ; preds = %418, %230
  %265 = load i32, i32* %11, align 4
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %421

270:                                              ; preds = %264
  %271 = load i32*, i32** %8, align 8
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 0
  %276 = load i64, i64* %275, align 8
  %277 = sub i64 0, %276
  %278 = load i32, i32* %11, align 4
  %279 = sext i32 %278 to i64
  %280 = add i64 %277, %279
  %281 = getelementptr inbounds i32, i32* %271, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %282, i32* %283, align 16
  %284 = load i32*, i32** %9, align 8
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 1
  %287 = load i64*, i64** %286, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 1
  %289 = load i64, i64* %288, align 8
  %290 = sub i64 0, %289
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = add i64 %290, %292
  %294 = getelementptr inbounds i32, i32* %284, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %295, i32* %296, align 4
  %297 = load i32*, i32** %10, align 8
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 1
  %300 = load i64*, i64** %299, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 2
  %302 = load i64, i64* %301, align 8
  %303 = sub i64 0, %302
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = add i64 %303, %305
  %307 = getelementptr inbounds i32, i32* %297, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %308, i32* %309, align 8
  %310 = load i32*, i32** %6, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i64 0
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i64 0
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @get_vlc2(i32* %310, i32 %316, i32 %322, i32 2)
  store i32 %323, i32* %20, align 4
  %324 = load i32*, i32** %6, align 8
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i64 1
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i64 1
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @get_vlc2(i32* %324, i32 %330, i32 %336, i32 2)
  store i32 %337, i32* %21, align 4
  %338 = load i32*, i32** %6, align 8
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i64 1
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_7__*, %struct.TYPE_7__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %347, i64 1
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @get_vlc2(i32* %338, i32 %344, i32 %350, i32 2)
  store i32 %351, i32* %22, align 4
  %352 = load i32, i32* %20, align 4
  %353 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %354 = load i32, i32* %353, align 16
  %355 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %356 = load i32, i32* %355, align 16
  %357 = add nsw i32 %354, %356
  %358 = mul nsw i32 3, %357
  %359 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %360 = load i32, i32* %359, align 16
  %361 = mul nsw i32 2, %360
  %362 = sub nsw i32 %358, %361
  %363 = ashr i32 %362, 2
  %364 = add nsw i32 %352, %363
  %365 = and i32 %364, 255
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %365, i32* %366, align 16
  %367 = load i32*, i32** %8, align 8
  %368 = load i32, i32* %11, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  store i32 %365, i32* %370, align 4
  %371 = load i32, i32* %21, align 4
  %372 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %373 = load i32, i32* %372, align 4
  %374 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %373, %375
  %377 = mul nsw i32 3, %376
  %378 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %379 = load i32, i32* %378, align 4
  %380 = mul nsw i32 2, %379
  %381 = sub nsw i32 %377, %380
  %382 = ashr i32 %381, 2
  %383 = add nsw i32 %371, %382
  %384 = and i32 %383, 255
  %385 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %384, i32* %385, align 4
  %386 = load i32*, i32** %9, align 8
  %387 = load i32, i32* %11, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  store i32 %384, i32* %389, align 4
  %390 = load i32, i32* %22, align 4
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %392 = load i32, i32* %391, align 8
  %393 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  %394 = load i32, i32* %393, align 8
  %395 = add nsw i32 %392, %394
  %396 = mul nsw i32 3, %395
  %397 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %398 = load i32, i32* %397, align 8
  %399 = mul nsw i32 2, %398
  %400 = sub nsw i32 %396, %399
  %401 = ashr i32 %400, 2
  %402 = add nsw i32 %390, %401
  %403 = and i32 %402, 255
  %404 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %403, i32* %404, align 8
  %405 = load i32*, i32** %10, align 8
  %406 = load i32, i32* %11, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  store i32 %403, i32* %408, align 4
  %409 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %410 = load i32, i32* %409, align 16
  %411 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %410, i32* %411, align 16
  %412 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  %413 = load i32, i32* %412, align 4
  %414 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %413, i32* %414, align 4
  %415 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  %416 = load i32, i32* %415, align 8
  %417 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %416, i32* %417, align 8
  br label %418

418:                                              ; preds = %270
  %419 = load i32, i32* %11, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %11, align 4
  br label %264

421:                                              ; preds = %264
  br label %422

422:                                              ; preds = %421, %229
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 1
  %425 = load i64*, i64** %424, align 8
  %426 = getelementptr inbounds i64, i64* %425, i64 0
  %427 = load i64, i64* %426, align 8
  %428 = load i32*, i32** %8, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 %427
  store i32* %429, i32** %8, align 8
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 1
  %432 = load i64*, i64** %431, align 8
  %433 = getelementptr inbounds i64, i64* %432, i64 1
  %434 = load i64, i64* %433, align 8
  %435 = load i32*, i32** %9, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 %434
  store i32* %436, i32** %9, align 8
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 1
  %439 = load i64*, i64** %438, align 8
  %440 = getelementptr inbounds i64, i64* %439, i64 2
  %441 = load i64, i64* %440, align 8
  %442 = load i32*, i32** %10, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 %441
  store i32* %443, i32** %10, align 8
  br label %444

444:                                              ; preds = %422
  %445 = load i32, i32* %12, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %12, align 4
  br label %190

447:                                              ; preds = %190
  ret void
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
