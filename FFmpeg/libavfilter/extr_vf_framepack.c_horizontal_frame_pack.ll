; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_framepack.c_horizontal_frame_pack.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_framepack.c_horizontal_frame_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__**, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32**, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32**, i32, i32, i32* }

@LEFT = common dso_local global i64 0, align 8
@RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, i32)* @horizontal_frame_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @horizontal_frame_pack(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32*], align 16
  %18 = alloca [4 x i32*], align 16
  %19 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %7, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %242

28:                                               ; preds = %3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %30, align 8
  %32 = load i64, i64* @LEFT, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %31, i64 %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %11, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %40, align 8
  %42 = load i64, i64* @RIGHT, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %41, i64 %42
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %12, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %13, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 2
  store i32 %57, i32* %14, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %238, %28
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %62, %67
  br i1 %68, label %69, label %241

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %95

75:                                               ; preds = %72, %69
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sdiv i32 %78, 2
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @AV_CEIL_RSHIFT(i32 %79, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @AV_CEIL_RSHIFT(i32 %88, i32 %93)
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %75, %72
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %234, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %237

100:                                              ; preds = %96
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %102, align 8
  %104 = load i64, i64* @LEFT, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %103, i64 %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %114, align 8
  %116 = load i64, i64* @LEFT, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %115, i64 %116
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %112, i64 %127
  store i32* %128, i32** %11, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %130, align 8
  %132 = load i64, i64* @RIGHT, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %131, i64 %132
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %142, align 8
  %144 = load i64, i64* @RIGHT, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %143, i64 %144
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %9, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %140, i64 %155
  store i32* %156, i32** %12, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32**, i32*** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32*, i32** %159, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %9, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %163, i64 %173
  store i32* %174, i32** %13, align 8
  store i32 0, i32* %16, align 4
  br label %175

175:                                              ; preds = %230, %100
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %233

179:                                              ; preds = %175
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %179
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %216

193:                                              ; preds = %186, %179
  %194 = load i32, i32* %10, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %216

199:                                              ; preds = %196, %193
  %200 = load i32*, i32** %11, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %201, %203
  %205 = sdiv i32 %204, 2
  %206 = load i32*, i32** %13, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %13, align 8
  store i32 %205, i32* %206, align 4
  %208 = load i32*, i32** %11, align 8
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %209, %211
  %213 = sdiv i32 %212, 2
  %214 = load i32*, i32** %13, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %13, align 8
  store i32 %213, i32* %214, align 4
  br label %225

216:                                              ; preds = %196, %186
  %217 = load i32*, i32** %11, align 8
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %13, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %13, align 8
  store i32 %218, i32* %219, align 4
  %221 = load i32*, i32** %12, align 8
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %13, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %13, align 8
  store i32 %222, i32* %223, align 4
  br label %225

225:                                              ; preds = %216, %199
  %226 = load i32*, i32** %11, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  store i32* %227, i32** %11, align 8
  %228 = load i32*, i32** %12, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  store i32* %229, i32** %12, align 8
  br label %230

230:                                              ; preds = %225
  %231 = load i32, i32* %16, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %16, align 4
  br label %175

233:                                              ; preds = %175
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %9, align 4
  br label %96

237:                                              ; preds = %96
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %10, align 4
  br label %61

241:                                              ; preds = %61
  br label %385

242:                                              ; preds = %3
  store i32 0, i32* %9, align 4
  br label %243

243:                                              ; preds = %381, %242
  %244 = load i32, i32* %9, align 4
  %245 = icmp slt i32 %244, 2
  br i1 %245, label %246, label %384

246:                                              ; preds = %243
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %249, i64 %251
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = ashr i32 %255, %260
  store i32 %261, i32* %19, align 4
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %264, i64 %266
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load i32**, i32*** %269, align 8
  %271 = getelementptr inbounds i32*, i32** %270, i64 0
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  store i32* %272, i32** %273, align 16
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %275, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %276, i64 %278
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i32**, i32*** %281, align 8
  %283 = getelementptr inbounds i32*, i32** %282, i64 1
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 1
  store i32* %284, i32** %285, align 8
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %287, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %288, i64 %290
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 0
  %294 = load i32**, i32*** %293, align 8
  %295 = getelementptr inbounds i32*, i32** %294, i64 2
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 2
  store i32* %296, i32** %297, align 16
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 0
  %300 = load i32**, i32*** %299, align 8
  %301 = getelementptr inbounds i32*, i32** %300, i64 0
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %9, align 4
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %306, i64 %308
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = mul nsw i32 %303, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %302, i64 %314
  %316 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  store i32* %315, i32** %316, align 16
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 0
  %319 = load i32**, i32*** %318, align 8
  %320 = getelementptr inbounds i32*, i32** %319, i64 1
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* %19, align 4
  %324 = mul nsw i32 %322, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %321, i64 %325
  %327 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 1
  store i32* %326, i32** %327, align 8
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 0
  %330 = load i32**, i32*** %329, align 8
  %331 = getelementptr inbounds i32*, i32** %330, i64 2
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* %19, align 4
  %335 = mul nsw i32 %333, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %332, i64 %336
  %338 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 2
  store i32* %337, i32** %338, align 16
  %339 = getelementptr inbounds [4 x i32*], [4 x i32*]* %18, i64 0, i64 0
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 3
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds [4 x i32*], [4 x i32*]* %17, i64 0, i64 0
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %345, align 8
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %346, i64 %348
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %354, align 8
  %356 = load i32, i32* %9, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %355, i64 %357
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %363, align 8
  %365 = load i32, i32* %9, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %364, i64 %366
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %372, align 8
  %374 = load i32, i32* %9, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %373, i64 %375
  %377 = load %struct.TYPE_10__*, %struct.TYPE_10__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @av_image_copy(i32** %339, i32* %342, i32** %343, i32* %352, i32 %361, i32 %370, i32 %379)
  br label %381

381:                                              ; preds = %246
  %382 = load i32, i32* %9, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %9, align 4
  br label %243

384:                                              ; preds = %243
  br label %385

385:                                              ; preds = %384, %241
  ret void
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_image_copy(i32**, i32*, i32**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
