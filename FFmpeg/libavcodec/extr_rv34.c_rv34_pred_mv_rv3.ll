; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_pred_mv_rv3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_pred_mv_rv3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64**, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*** }

@avail_indexes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @rv34_pred_mv_rv3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv34_pred_mv_rv3(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  %32 = add nsw i32 %23, %31
  store i32 %32, i32* %8, align 4
  %33 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 8, i1 false)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32*, i32** @avail_indexes, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32* %41, i32** %17, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 -1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %3
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32***, i32**** %50, align 8
  %52 = getelementptr inbounds i32**, i32*** %51, i64 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32***, i32**** %65, align 8
  %67 = getelementptr inbounds i32**, i32*** %66, i64 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %68, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %46, %3
  %78 = load i32*, i32** %17, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 -4
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %119

82:                                               ; preds = %77
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32***, i32**** %86, align 8
  %88 = getelementptr inbounds i32**, i32*** %87, i64 0
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %89, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32***, i32**** %104, align 8
  %106 = getelementptr inbounds i32**, i32*** %105, i64 0
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %107, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %117, i32* %118, align 4
  br label %126

119:                                              ; preds = %77
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %82
  %127 = load i32*, i32** %17, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 -2
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %188, label %131

131:                                              ; preds = %126
  %132 = load i32*, i32** %17, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 -4
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %180

136:                                              ; preds = %131
  %137 = load i32*, i32** %17, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 -1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %180

141:                                              ; preds = %136
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32***, i32**** %145, align 8
  %147 = getelementptr inbounds i32**, i32*** %146, i64 0
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %149, %152
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %148, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %159, i32* %160, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32***, i32**** %164, align 8
  %166 = getelementptr inbounds i32**, i32*** %165, i64 0
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %168, %171
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %167, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %178, i32* %179, align 4
  br label %187

180:                                              ; preds = %136, %131
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %182, i32* %183, align 4
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %185, i32* %186, align 4
  br label %187

187:                                              ; preds = %180, %141
  br label %227

188:                                              ; preds = %126
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32***, i32**** %192, align 8
  %194 = getelementptr inbounds i32**, i32*** %193, i64 0
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %196, %199
  %201 = add nsw i32 %200, 2
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %195, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %206, i32* %207, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 3
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32***, i32**** %211, align 8
  %213 = getelementptr inbounds i32**, i32*** %212, i64 0
  %214 = load i32**, i32*** %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %215, %218
  %220 = add nsw i32 %219, 2
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %214, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %225, i32* %226, align 4
  br label %227

227:                                              ; preds = %188, %187
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @mid_pred(i32 %229, i32 %231, i32 %233)
  store i32 %234, i32* %15, align 4
  %235 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @mid_pred(i32 %236, i32 %238, i32 %240)
  store i32 %241, i32* %16, align 4
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = load i64**, i64*** %243, align 8
  %245 = getelementptr inbounds i64*, i64** %244, i64 0
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 0
  %248 = load i64, i64* %247, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %250, %248
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %15, align 4
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 1
  %255 = load i64**, i64*** %254, align 8
  %256 = getelementptr inbounds i64*, i64** %255, i64 0
  %257 = load i64*, i64** %256, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 1
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* %16, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %261, %259
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %264

264:                                              ; preds = %330, %227
  %265 = load i32, i32* %13, align 4
  %266 = icmp slt i32 %265, 2
  br i1 %266, label %267, label %333

267:                                              ; preds = %264
  store i32 0, i32* %12, align 4
  br label %268

268:                                              ; preds = %326, %267
  %269 = load i32, i32* %12, align 4
  %270 = icmp slt i32 %269, 2
  br i1 %270, label %271, label %329

271:                                              ; preds = %268
  store i32 0, i32* %14, align 4
  br label %272

272:                                              ; preds = %322, %271
  %273 = load i32, i32* %14, align 4
  %274 = icmp slt i32 %273, 2
  br i1 %274, label %275, label %325

275:                                              ; preds = %272
  %276 = load i32, i32* %15, align 4
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 0
  %281 = load i32***, i32**** %280, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32**, i32*** %281, i64 %283
  %285 = load i32**, i32*** %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* %12, align 4
  %288 = add nsw i32 %286, %287
  %289 = load i32, i32* %13, align 4
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = mul nsw i32 %289, %292
  %294 = add nsw i32 %288, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32*, i32** %285, i64 %295
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  store i32 %276, i32* %298, align 4
  %299 = load i32, i32* %16, align 4
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 3
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 0
  %304 = load i32***, i32**** %303, align 8
  %305 = load i32, i32* %14, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32**, i32*** %304, i64 %306
  %308 = load i32**, i32*** %307, align 8
  %309 = load i32, i32* %8, align 4
  %310 = load i32, i32* %12, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32, i32* %13, align 4
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = mul nsw i32 %312, %315
  %317 = add nsw i32 %311, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32*, i32** %308, i64 %318
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  store i32 %299, i32* %321, align 4
  br label %322

322:                                              ; preds = %275
  %323 = load i32, i32* %14, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %14, align 4
  br label %272

325:                                              ; preds = %272
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %12, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %12, align 4
  br label %268

329:                                              ; preds = %268
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %13, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %13, align 4
  br label %264

333:                                              ; preds = %264
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mid_pred(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
