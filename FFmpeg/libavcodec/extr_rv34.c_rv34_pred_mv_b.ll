; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_pred_mv_b.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_pred_mv_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64**, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32*** }

@MB_TYPE_L1 = common dso_local global i32 0, align 4
@MB_TYPE_L0 = common dso_local global i32 0, align 4
@RV34_MB_B_BACKWARD = common dso_local global i32 0, align 4
@RV34_MB_B_FORWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @rv34_pred_mv_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv34_pred_mv_b(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  %35 = add nsw i32 %27, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %38, 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = add nsw i32 %39, %47
  store i32 %48, i32* %9, align 4
  %49 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 8, i1 false)
  %50 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 8, i1 false)
  %51 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %51, i8 0, i64 8, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %20, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %3
  %58 = load i32, i32* @MB_TYPE_L1, align 4
  br label %61

59:                                               ; preds = %3
  %60 = load i32, i32* @MB_TYPE_L0, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  store i32 %62, i32* %21, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %22, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %22, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %21, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %61
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32***, i32**** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32**, i32*** %83, i64 %85
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %87, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32***, i32**** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32**, i32*** %98, i64 %100
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %102, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %109, i32* %110, align 4
  store i32 1, i32* %13, align 4
  br label %111

111:                                              ; preds = %80, %61
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %22, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* %21, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %159

122:                                              ; preds = %111
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32***, i32**** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32**, i32*** %125, i64 %127
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %130, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %129, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %139, i32* %140, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32***, i32**** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32**, i32*** %143, i64 %145
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %148, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %147, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %157, i32* %158, align 4
  store i32 1, i32* %14, align 4
  br label %159

159:                                              ; preds = %122, %111
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %216

166:                                              ; preds = %159
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %22, align 4
  %173 = and i32 %171, %172
  %174 = load i32, i32* %21, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %216

177:                                              ; preds = %166
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32***, i32**** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32**, i32*** %180, i64 %182
  %184 = load i32**, i32*** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %185, %188
  %190 = add nsw i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %184, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %195, i32* %196, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32***, i32**** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32**, i32*** %199, i64 %201
  %203 = load i32**, i32*** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %204, %207
  %209 = add nsw i32 %208, 2
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %203, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %214, i32* %215, align 4
  store i32 1, i32* %15, align 4
  br label %276

216:                                              ; preds = %166, %159
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %220, %223
  br i1 %224, label %225, label %275

225:                                              ; preds = %216
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %22, align 4
  %232 = and i32 %230, %231
  %233 = load i32, i32* %21, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %275

236:                                              ; preds = %225
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = load i32***, i32**** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32**, i32*** %239, i64 %241
  %243 = load i32**, i32*** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %244, %247
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %243, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %254, i32* %255, align 4
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  %258 = load i32***, i32**** %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32**, i32*** %258, i64 %260
  %262 = load i32**, i32*** %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = sub nsw i32 %263, %266
  %268 = sub nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32*, i32** %262, i64 %269
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %273, i32* %274, align 4
  store i32 1, i32* %15, align 4
  br label %275

275:                                              ; preds = %236, %225, %216
  br label %276

276:                                              ; preds = %275, %177
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %280 = load i32, i32* %13, align 4
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* %15, align 4
  %283 = call i32 @rv34_pred_b_vector(i32* %277, i32* %278, i32* %279, i32 %280, i32 %281, i32 %282, i32* %16, i32* %17)
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 1
  %286 = load i64**, i64*** %285, align 8
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64*, i64** %286, i64 %288
  %290 = load i64*, i64** %289, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 0
  %292 = load i64, i64* %291, align 8
  %293 = load i32, i32* %16, align 4
  %294 = sext i32 %293 to i64
  %295 = add nsw i64 %294, %292
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %16, align 4
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 1
  %299 = load i64**, i64*** %298, align 8
  %300 = load i32, i32* %6, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64*, i64** %299, i64 %301
  %303 = load i64*, i64** %302, align 8
  %304 = getelementptr inbounds i64, i64* %303, i64 1
  %305 = load i64, i64* %304, align 8
  %306 = load i32, i32* %17, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %307, %305
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %310

310:                                              ; preds = %364, %276
  %311 = load i32, i32* %19, align 4
  %312 = icmp slt i32 %311, 2
  br i1 %312, label %313, label %367

313:                                              ; preds = %310
  store i32 0, i32* %18, align 4
  br label %314

314:                                              ; preds = %360, %313
  %315 = load i32, i32* %18, align 4
  %316 = icmp slt i32 %315, 2
  br i1 %316, label %317, label %363

317:                                              ; preds = %314
  %318 = load i32, i32* %16, align 4
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 1
  %321 = load i32***, i32**** %320, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32**, i32*** %321, i64 %323
  %325 = load i32**, i32*** %324, align 8
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* %18, align 4
  %328 = add nsw i32 %326, %327
  %329 = load i32, i32* %19, align 4
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 4
  %333 = mul nsw i32 %329, %332
  %334 = add nsw i32 %328, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32*, i32** %325, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  store i32 %318, i32* %338, align 4
  %339 = load i32, i32* %17, align 4
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 1
  %342 = load i32***, i32**** %341, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32**, i32*** %342, i64 %344
  %346 = load i32**, i32*** %345, align 8
  %347 = load i32, i32* %9, align 4
  %348 = load i32, i32* %18, align 4
  %349 = add nsw i32 %347, %348
  %350 = load i32, i32* %19, align 4
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = mul nsw i32 %350, %353
  %355 = add nsw i32 %349, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32*, i32** %346, i64 %356
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 1
  store i32 %339, i32* %359, align 4
  br label %360

360:                                              ; preds = %317
  %361 = load i32, i32* %18, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %18, align 4
  br label %314

363:                                              ; preds = %314
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %19, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %19, align 4
  br label %310

367:                                              ; preds = %310
  %368 = load i32, i32* %5, align 4
  %369 = load i32, i32* @RV34_MB_B_BACKWARD, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %375, label %371

371:                                              ; preds = %367
  %372 = load i32, i32* %5, align 4
  %373 = load i32, i32* @RV34_MB_B_FORWARD, align 4
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %394

375:                                              ; preds = %371, %367
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 1
  %378 = load i32***, i32**** %377, align 8
  %379 = load i32, i32* %6, align 4
  %380 = icmp ne i32 %379, 0
  %381 = xor i1 %380, true
  %382 = zext i1 %381 to i32
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32**, i32*** %378, i64 %383
  %385 = load i32**, i32*** %384, align 8
  %386 = load i32, i32* %9, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32*, i32** %385, i64 %387
  %389 = load i32*, i32** %388, align 8
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @ZERO8x2(i32* %389, i32 %392)
  br label %394

394:                                              ; preds = %375, %371
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rv34_pred_b_vector(i32*, i32*, i32*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @ZERO8x2(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
