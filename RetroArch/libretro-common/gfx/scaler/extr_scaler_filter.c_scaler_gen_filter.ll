; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_filter.c_scaler_gen_filter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler_filter.c_scaler_gen_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_ctx = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32* }

@scaler_argb8888_point_special = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scaler_gen_filter(%struct.scaler_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scaler_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scaler_ctx* %0, %struct.scaler_ctx** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %76 [
    i32 130, label %12
    i32 131, label %25
    i32 129, label %38
    i32 128, label %75
  ]

12:                                               ; preds = %1
  %13 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %77

25:                                               ; preds = %1
  %26 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 2, i32* %28, align 8
  %29 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 2, i32* %31, align 4
  %32 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 2, i32* %34, align 8
  %35 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 2, i32* %37, align 4
  br label %77

38:                                               ; preds = %1
  %39 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %49, %52
  %54 = call i32 @next_pow2(i32 %53)
  br label %56

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %46
  %57 = phi i32 [ %54, %46 ], [ 1, %55 ]
  %58 = mul nsw i32 8, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  br label %77

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %75
  store i32 0, i32* %2, align 4
  br label %330

77:                                               ; preds = %56, %25, %12
  %78 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %79 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = call i64 @calloc(i32 4, i32 %85)
  %87 = inttoptr i64 %86 to i32*
  %88 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  store i32* %87, i32** %90, align 8
  %91 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @calloc(i32 4, i32 %93)
  %95 = inttoptr i64 %94 to i32*
  %96 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i32* %95, i32** %98, align 8
  %99 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = call i64 @calloc(i32 4, i32 %106)
  %108 = inttoptr i64 %107 to i32*
  %109 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %110 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  store i32* %108, i32** %111, align 8
  %112 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @calloc(i32 4, i32 %114)
  %116 = inttoptr i64 %115 to i32*
  %117 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %118 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  store i32* %116, i32** %119, align 8
  %120 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %77
  %126 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %127 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %125, %77
  store i32 0, i32* %2, align 4
  br label %330

132:                                              ; preds = %125
  %133 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %134 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 65536, %135
  %137 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %138 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = sdiv i32 %136, %139
  store i32 %140, i32* %5, align 4
  %141 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %142 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = mul nsw i32 65536, %143
  %145 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %146 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = sdiv i32 %144, %147
  store i32 %148, i32* %7, align 4
  %149 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %150 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  switch i32 %151, label %307 [
    i32 130, label %152
    i32 131, label %190
    i32 129, label %225
    i32 128, label %306
  ]

152:                                              ; preds = %132
  %153 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %154 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 32768, %155
  %157 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %158 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sdiv i32 %156, %159
  %161 = sub nsw i32 %160, 32768
  store i32 %161, i32* %4, align 4
  %162 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 32768, %164
  %166 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %167 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = sdiv i32 %165, %168
  %170 = sub nsw i32 %169, 32768
  store i32 %170, i32* %6, align 4
  %171 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %172 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %171, i32 0, i32 6
  %173 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %174 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @gen_filter_point_sub(%struct.TYPE_5__* %172, i32 %175, i32 %176, i32 %177)
  %179 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %180 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %179, i32 0, i32 5
  %181 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %182 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @gen_filter_point_sub(%struct.TYPE_5__* %180, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* @scaler_argb8888_point_special, align 4
  %188 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %189 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %188, i32 0, i32 7
  store i32 %187, i32* %189, align 8
  br label %307

190:                                              ; preds = %132
  %191 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %192 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = mul nsw i32 32768, %193
  %195 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %196 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = sdiv i32 %194, %197
  %199 = sub nsw i32 %198, 32768
  store i32 %199, i32* %4, align 4
  %200 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %201 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = mul nsw i32 32768, %202
  %204 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %205 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = sdiv i32 %203, %206
  %208 = sub nsw i32 %207, 32768
  store i32 %208, i32* %6, align 4
  %209 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %210 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %209, i32 0, i32 6
  %211 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %212 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @gen_filter_bilinear_sub(%struct.TYPE_5__* %210, i32 %213, i32 %214, i32 %215)
  %217 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %218 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %217, i32 0, i32 5
  %219 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %220 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @gen_filter_bilinear_sub(%struct.TYPE_5__* %218, i32 %221, i32 %222, i32 %223)
  br label %307

225:                                              ; preds = %132
  %226 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %227 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 32768, %228
  %230 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %231 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = sdiv i32 %229, %232
  %234 = sub nsw i32 %233, 32768
  %235 = load i32, i32* %8, align 4
  %236 = shl i32 %235, 15
  %237 = sub nsw i32 %234, %236
  store i32 %237, i32* %4, align 4
  %238 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %239 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = mul nsw i32 32768, %240
  %242 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %243 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = sdiv i32 %241, %244
  %246 = sub nsw i32 %245, 32768
  %247 = load i32, i32* %8, align 4
  %248 = shl i32 %247, 15
  %249 = sub nsw i32 %246, %248
  store i32 %249, i32* %6, align 4
  %250 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %251 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %250, i32 0, i32 6
  %252 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %253 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %4, align 4
  %256 = load i32, i32* %5, align 4
  %257 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %258 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %261 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = icmp sgt i32 %259, %262
  br i1 %263, label %264, label %274

264:                                              ; preds = %225
  %265 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %266 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = sitofp i32 %267 to double
  %269 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %270 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sitofp i32 %271 to double
  %273 = fdiv double %268, %272
  br label %275

274:                                              ; preds = %225
  br label %275

275:                                              ; preds = %274, %264
  %276 = phi double [ %273, %264 ], [ 1.000000e+00, %274 ]
  %277 = call i32 @gen_filter_sinc_sub(%struct.TYPE_5__* %251, i32 %254, i32 %255, i32 %256, double %276)
  %278 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %279 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %278, i32 0, i32 5
  %280 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %281 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* %7, align 4
  %285 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %286 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %289 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = icmp sgt i32 %287, %290
  br i1 %291, label %292, label %302

292:                                              ; preds = %275
  %293 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %294 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = sitofp i32 %295 to double
  %297 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %298 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = sitofp i32 %299 to double
  %301 = fdiv double %296, %300
  br label %303

302:                                              ; preds = %275
  br label %303

303:                                              ; preds = %302, %292
  %304 = phi double [ %301, %292 ], [ 1.000000e+00, %302 ]
  %305 = call i32 @gen_filter_sinc_sub(%struct.TYPE_5__* %279, i32 %282, i32 %283, i32 %284, double %304)
  br label %307

306:                                              ; preds = %132
  br label %307

307:                                              ; preds = %132, %306, %303, %190, %152
  %308 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %309 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %308, i32 0, i32 6
  %310 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %311 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %314 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = sitofp i32 %315 to double
  %317 = call i32 @fixup_filter_sub(%struct.TYPE_5__* %309, i32 %312, double %316)
  %318 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %319 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %318, i32 0, i32 5
  %320 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %321 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %324 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = sitofp i32 %325 to double
  %327 = call i32 @fixup_filter_sub(%struct.TYPE_5__* %319, i32 %322, double %326)
  %328 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %329 = call i32 @validate_filter(%struct.scaler_ctx* %328)
  store i32 %329, i32* %2, align 4
  br label %330

330:                                              ; preds = %307, %131, %76
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local i32 @next_pow2(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @gen_filter_point_sub(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @gen_filter_bilinear_sub(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @gen_filter_sinc_sub(%struct.TYPE_5__*, i32, i32, i32, double) #1

declare dso_local i32 @fixup_filter_sub(%struct.TYPE_5__*, i32, double) #1

declare dso_local i32 @validate_filter(%struct.scaler_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
