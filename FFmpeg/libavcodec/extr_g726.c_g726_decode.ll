; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g726.c_g726_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g726.c_g726_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__*, i32)* @g726_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @g726_decode(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = ashr i32 %18, %22
  store i32 %23, i32* %17, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @inverse_quant(%struct.TYPE_9__* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 15
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 10
  %35 = and i32 %34, 31
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 9
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %44

39:                                               ; preds = %2
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 32, %40
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 %41, %42
  br label %44

44:                                               ; preds = %39, %38
  %45 = phi i32 [ 31744, %38 ], [ %43, %39 ]
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %13, align 4
  %53 = mul nsw i32 3, %52
  %54 = ashr i32 %53, 2
  %55 = icmp sgt i32 %51, %54
  br label %56

56:                                               ; preds = %50, %44
  %57 = phi i1 [ false, %44 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %64
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i32 @sgn(i32 %84)
  br label %87

86:                                               ; preds = %64
  br label %87

87:                                               ; preds = %86, %79
  %88 = phi i32 [ %85, %79 ], [ 0, %86 ]
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @sgn(i32 %92)
  br label %95

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %91
  %96 = phi i32 [ %93, %91 ], [ 0, %94 ]
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 0, i32* %103, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 0, i32* %107, align 4
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %118, %99
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 6
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %108

121:                                              ; preds = %108
  br label %256

122:                                              ; preds = %95
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 0, %127
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %128, %133
  %135 = load i32, i32* %7, align 4
  %136 = mul nsw i32 %134, %135
  %137 = ashr i32 %136, 5
  %138 = call i32 @av_clip_intp2(i32 %137, i32 8)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %7, align 4
  %140 = mul nsw i32 128, %139
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 7
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %140, %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %146, %147
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 7
  %155 = sub nsw i32 %148, %154
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %155
  store i32 %161, i32* %159, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @av_clip(i32 %166, i32 -12288, i32 12288)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 5
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 %168, i32* %172, align 4
  %173 = load i32, i32* %7, align 4
  %174 = mul nsw i32 192, %173
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 7
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %174, %179
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 8
  %187 = sub nsw i32 %180, %186
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 5
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %187
  store i32 %193, i32* %191, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 5
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 15360, %203
  %205 = sub nsw i32 0, %204
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 5
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 15360, %210
  %212 = call i8* @av_clip(i32 %198, i32 %205, i32 %211)
  %213 = ptrtoint i8* %212 to i32
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 5
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  store i32 %213, i32* %217, align 4
  store i32 0, i32* %9, align 4
  br label %218

218:                                              ; preds = %252, %122
  %219 = load i32, i32* %9, align 4
  %220 = icmp slt i32 %219, 6
  br i1 %220, label %221, label %255

221:                                              ; preds = %218
  %222 = load i32, i32* %15, align 4
  %223 = mul nsw i32 128, %222
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 14
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sub nsw i32 0, %231
  %233 = call i32 @sgn(i32 %232)
  %234 = mul nsw i32 %223, %233
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 6
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = ashr i32 %241, 8
  %243 = sub nsw i32 %234, %242
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 6
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, %243
  store i32 %251, i32* %249, align 4
  br label %252

252:                                              ; preds = %221
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %9, align 4
  br label %218

255:                                              ; preds = %218
  br label %256

256:                                              ; preds = %255, %121
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 7
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 7
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  store i32 %261, i32* %265, align 4
  %266 = load i32, i32* %7, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %256
  %269 = load i32, i32* %7, align 4
  br label %271

270:                                              ; preds = %256
  br label %271

271:                                              ; preds = %270, %268
  %272 = phi i32 [ %269, %268 ], [ 1, %270 ]
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 7
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  store i32 %272, i32* %276, align 4
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 13
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i64 1
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 13
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i64 0
  %285 = bitcast %struct.TYPE_10__* %280 to i8*
  %286 = bitcast %struct.TYPE_10__* %284 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %285, i8* align 4 %286, i64 4, i1 false)
  %287 = load i32, i32* %6, align 4
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 13
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i64 0
  %292 = call i32 @i2f(i32 %287, %struct.TYPE_10__* %291)
  store i32 5, i32* %9, align 4
  br label %293

293:                                              ; preds = %312, %271
  %294 = load i32, i32* %9, align 4
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %315

296:                                              ; preds = %293
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 14
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i64 %301
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 14
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %304, align 8
  %306 = load i32, i32* %9, align 4
  %307 = sub nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i64 %308
  %310 = bitcast %struct.TYPE_10__* %302 to i8*
  %311 = bitcast %struct.TYPE_10__* %309 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %310, i8* align 4 %311, i64 4, i1 false)
  br label %312

312:                                              ; preds = %296
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, -1
  store i32 %314, i32* %9, align 4
  br label %293

315:                                              ; preds = %293
  %316 = load i32, i32* %5, align 4
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 14
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i64 0
  %321 = call i32 @i2f(i32 %316, %struct.TYPE_10__* %320)
  %322 = load i32, i32* %17, align 4
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 14
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i64 0
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  store i32 %322, i32* %327, align 4
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 5
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 1
  %332 = load i32, i32* %331, align 4
  %333 = icmp slt i32 %332, -11776
  %334 = zext i1 %333 to i32
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 2
  store i32 %334, i32* %336, align 8
  %337 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 15
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = load i32, i32* %4, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = shl i32 %344, 4
  %346 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 8
  %348 = load i32, i32* %347, align 8
  %349 = sub nsw i32 0, %348
  %350 = ashr i32 %349, 5
  %351 = add nsw i32 %345, %350
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 8
  %354 = load i32, i32* %353, align 8
  %355 = add nsw i32 %354, %351
  store i32 %355, i32* %353, align 8
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 15
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %4, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = shl i32 %363, 4
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 9
  %367 = load i32, i32* %366, align 4
  %368 = sub nsw i32 0, %367
  %369 = ashr i32 %368, 7
  %370 = add nsw i32 %364, %369
  %371 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 9
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, %370
  store i32 %374, i32* %372, align 4
  %375 = load i32, i32* %10, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %315
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 10
  store i32 256, i32* %379, align 8
  br label %420

380:                                              ; preds = %315
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 10
  %383 = load i32, i32* %382, align 8
  %384 = sub nsw i32 0, %383
  %385 = ashr i32 %384, 4
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 10
  %388 = load i32, i32* %387, align 8
  %389 = add nsw i32 %388, %385
  store i32 %389, i32* %387, align 8
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 11
  %392 = load i32, i32* %391, align 4
  %393 = icmp sle i32 %392, 1535
  br i1 %393, label %414, label %394

394:                                              ; preds = %380
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %414, label %399

399:                                              ; preds = %394
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 8
  %402 = load i32, i32* %401, align 8
  %403 = shl i32 %402, 2
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 9
  %406 = load i32, i32* %405, align 4
  %407 = sub nsw i32 %403, %406
  %408 = call i32 @abs(i32 %407) #4
  %409 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i32 0, i32 9
  %411 = load i32, i32* %410, align 4
  %412 = ashr i32 %411, 3
  %413 = icmp sge i32 %408, %412
  br i1 %413, label %414, label %419

414:                                              ; preds = %399, %394, %380
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 10
  %417 = load i32, i32* %416, align 8
  %418 = add nsw i32 %417, 32
  store i32 %418, i32* %416, align 8
  br label %419

419:                                              ; preds = %414, %399
  br label %420

420:                                              ; preds = %419, %377
  %421 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 11
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 15
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i32 0, i32 1
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %4, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 %423, %431
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 11
  %435 = load i32, i32* %434, align 4
  %436 = sub nsw i32 0, %435
  %437 = ashr i32 %436, 5
  %438 = add nsw i32 %432, %437
  %439 = call i8* @av_clip(i32 %438, i32 544, i32 5120)
  %440 = ptrtoint i8* %439 to i32
  %441 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %442 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %441, i32 0, i32 12
  store i32 %440, i32* %442, align 8
  %443 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %443, i32 0, i32 12
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = sub nsw i32 0, %448
  %450 = ashr i32 %449, 6
  %451 = add nsw i32 %445, %450
  %452 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = add nsw i32 %454, %451
  store i32 %455, i32* %453, align 4
  %456 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %456, i32 0, i32 10
  %458 = load i32, i32* %457, align 8
  %459 = icmp sge i32 %458, 256
  br i1 %459, label %460, label %461

460:                                              ; preds = %420
  br label %466

461:                                              ; preds = %420
  %462 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %462, i32 0, i32 10
  %464 = load i32, i32* %463, align 8
  %465 = ashr i32 %464, 2
  br label %466

466:                                              ; preds = %461, %460
  %467 = phi i32 [ 64, %460 ], [ %465, %461 ]
  store i32 %467, i32* %14, align 4
  %468 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 12
  %473 = load i32, i32* %472, align 8
  %474 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = ashr i32 %476, 6
  %478 = sub nsw i32 %473, %477
  %479 = load i32, i32* %14, align 4
  %480 = mul nsw i32 %478, %479
  %481 = add nsw i32 %470, %480
  %482 = ashr i32 %481, 6
  %483 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %483, i32 0, i32 11
  store i32 %482, i32* %484, align 4
  %485 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %485, i32 0, i32 3
  store i32 0, i32* %486, align 4
  store i32 0, i32* %9, align 4
  br label %487

487:                                              ; preds = %511, %466
  %488 = load i32, i32* %9, align 4
  %489 = icmp slt i32 %488, 6
  br i1 %489, label %490, label %514

490:                                              ; preds = %487
  %491 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %491, i32 0, i32 6
  %493 = load i32*, i32** %492, align 8
  %494 = load i32, i32* %9, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = ashr i32 %497, 2
  %499 = call i32 @i2f(i32 %498, %struct.TYPE_10__* %16)
  %500 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %500, i32 0, i32 14
  %502 = load %struct.TYPE_10__*, %struct.TYPE_10__** %501, align 8
  %503 = load i32, i32* %9, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i64 %504
  %506 = call i32 @mult(i32 %499, %struct.TYPE_10__* %505)
  %507 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %508 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %507, i32 0, i32 3
  %509 = load i32, i32* %508, align 4
  %510 = add nsw i32 %509, %506
  store i32 %510, i32* %508, align 4
  br label %511

511:                                              ; preds = %490
  %512 = load i32, i32* %9, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* %9, align 4
  br label %487

514:                                              ; preds = %487
  %515 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %515, i32 0, i32 3
  %517 = load i32, i32* %516, align 4
  %518 = ashr i32 %517, 1
  %519 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %520 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %519, i32 0, i32 4
  store i32 %518, i32* %520, align 8
  store i32 0, i32* %9, align 4
  br label %521

521:                                              ; preds = %545, %514
  %522 = load i32, i32* %9, align 4
  %523 = icmp slt i32 %522, 2
  br i1 %523, label %524, label %548

524:                                              ; preds = %521
  %525 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 5
  %527 = load i32*, i32** %526, align 8
  %528 = load i32, i32* %9, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32, i32* %527, i64 %529
  %531 = load i32, i32* %530, align 4
  %532 = ashr i32 %531, 2
  %533 = call i32 @i2f(i32 %532, %struct.TYPE_10__* %16)
  %534 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %535 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %534, i32 0, i32 13
  %536 = load %struct.TYPE_10__*, %struct.TYPE_10__** %535, align 8
  %537 = load i32, i32* %9, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i64 %538
  %540 = call i32 @mult(i32 %533, %struct.TYPE_10__* %539)
  %541 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 3
  %543 = load i32, i32* %542, align 4
  %544 = add nsw i32 %543, %540
  store i32 %544, i32* %542, align 4
  br label %545

545:                                              ; preds = %524
  %546 = load i32, i32* %9, align 4
  %547 = add nsw i32 %546, 1
  store i32 %547, i32* %9, align 4
  br label %521

548:                                              ; preds = %521
  %549 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %550 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %549, i32 0, i32 3
  %551 = load i32, i32* %550, align 4
  %552 = ashr i32 %551, 1
  store i32 %552, i32* %550, align 4
  %553 = load i32, i32* %6, align 4
  %554 = mul nsw i32 %553, 4
  %555 = call i8* @av_clip(i32 %554, i32 -65535, i32 65535)
  ret i8* %555
}

declare dso_local i32 @inverse_quant(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sgn(i32) #1

declare dso_local i32 @av_clip_intp2(i32, i32) #1

declare dso_local i8* @av_clip(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2f(i32, %struct.TYPE_10__*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32 @mult(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
