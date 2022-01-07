; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_vscale.c_packed_vscale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_vscale.c_packed_vscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, i32*, i32, i64, i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32** }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32** }
%struct.TYPE_22__ = type { i32, i32**, i32 (%struct.TYPE_21__*, i32*, i32**, i32, i32*, i32**, i32**, i32, i32**, i32*, i32, i32)*, i64, i32* }

@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Optimized 2 tap filter code cannot be used\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, i32, i32)* @packed_vscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_vscale(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32**, align 8
  %24 = alloca i32**, align 8
  %25 = alloca i32**, align 8
  %26 = alloca i32**, align 8
  %27 = alloca i32**, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %9, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %39, %44
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %12, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %14, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %15, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 1, %66
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @FFMAX(i32 %67, i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 1, %77
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @FFMAX(i32 %78, i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %88, %96
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i64 1
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %98, %106
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i64 2
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %108, %116
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i64 3
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %118, %126
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %128, %136
  store i32 %137, i32* %22, align 4
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i32**, i32*** %144, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  store i32** %148, i32*** %23, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  store i32** %159, i32*** %24, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i64 2
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %20, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  store i32** %170, i32*** %25, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %4
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i64 3
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load i32**, i32*** %182, align 8
  %184 = load i32, i32* %21, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  br label %188

187:                                              ; preds = %4
  br label %188

188:                                              ; preds = %187, %175
  %189 = phi i32** [ %186, %175 ], [ null, %187 ]
  store i32** %189, i32*** %26, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i32**, i32*** %196, align 8
  %198 = load i32, i32* %22, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %197, i64 %199
  store i32** %200, i32*** %27, align 8
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %236

205:                                              ; preds = %188
  %206 = load i32, i32* %12, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %236

208:                                              ; preds = %205
  %209 = load i32, i32* %13, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %236

211:                                              ; preds = %208
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i32 (%struct.TYPE_21__*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32)*
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %217 = load i32**, i32*** %23, align 8
  %218 = load i32*, i32** %217, align 8
  %219 = load i32**, i32*** %24, align 8
  %220 = load i32**, i32*** %25, align 8
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %211
  %226 = load i32**, i32*** %26, align 8
  %227 = load i32*, i32** %226, align 8
  br label %229

228:                                              ; preds = %211
  br label %229

229:                                              ; preds = %228, %225
  %230 = phi i32* [ %227, %225 ], [ null, %228 ]
  %231 = load i32**, i32*** %27, align 8
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %7, align 4
  %235 = call i32 %215(%struct.TYPE_21__* %216, i32* %218, i32** %219, i32** %220, i32* %230, i32* %232, i32 %233, i32 0, i32 %234)
  br label %491

236:                                              ; preds = %208, %205, %188
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %305

241:                                              ; preds = %236
  %242 = load i32, i32* %12, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %305

244:                                              ; preds = %241
  %245 = load i32, i32* %13, align 4
  %246 = icmp eq i32 %245, 2
  br i1 %246, label %247, label %305

247:                                              ; preds = %244
  %248 = load i32*, i32** %15, align 8
  %249 = load i32, i32* %11, align 4
  %250 = mul nsw i32 2, %249
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %248, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32*, i32** %15, align 8
  %256 = load i32, i32* %11, align 4
  %257 = mul nsw i32 2, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %254, %260
  %262 = icmp eq i32 %261, 4096
  br i1 %262, label %263, label %305

263:                                              ; preds = %247
  %264 = load i32*, i32** %15, align 8
  %265 = load i32, i32* %11, align 4
  %266 = mul nsw i32 2, %265
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp ule i32 %270, 4096
  br i1 %271, label %272, label %305

272:                                              ; preds = %263
  %273 = load i32*, i32** %15, align 8
  %274 = load i32, i32* %11, align 4
  %275 = mul nsw i32 2, %274
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %273, i64 %277
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %28, align 4
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = inttoptr i64 %282 to i32 (%struct.TYPE_21__*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32)*
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %285 = load i32**, i32*** %23, align 8
  %286 = load i32*, i32** %285, align 8
  %287 = load i32**, i32*** %24, align 8
  %288 = load i32**, i32*** %25, align 8
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %272
  %294 = load i32**, i32*** %26, align 8
  %295 = load i32*, i32** %294, align 8
  br label %297

296:                                              ; preds = %272
  br label %297

297:                                              ; preds = %296, %293
  %298 = phi i32* [ %295, %293 ], [ null, %296 ]
  %299 = load i32**, i32*** %27, align 8
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* %28, align 4
  %303 = load i32, i32* %7, align 4
  %304 = call i32 %283(%struct.TYPE_21__* %284, i32* %286, i32** %287, i32** %288, i32* %298, i32* %300, i32 %301, i32 %302, i32 %303)
  br label %490

305:                                              ; preds = %263, %247, %244, %241, %236
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %427

310:                                              ; preds = %305
  %311 = load i32, i32* %12, align 4
  %312 = icmp eq i32 %311, 2
  br i1 %312, label %313, label %427

313:                                              ; preds = %310
  %314 = load i32, i32* %13, align 4
  %315 = icmp eq i32 %314, 2
  br i1 %315, label %316, label %427

316:                                              ; preds = %313
  %317 = load i32*, i32** %14, align 8
  %318 = load i32, i32* %7, align 4
  %319 = mul nsw i32 2, %318
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %317, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %14, align 8
  %325 = load i32, i32* %7, align 4
  %326 = mul nsw i32 2, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %323, %329
  %331 = icmp eq i32 %330, 4096
  br i1 %331, label %332, label %427

332:                                              ; preds = %316
  %333 = load i32*, i32** %14, align 8
  %334 = load i32, i32* %7, align 4
  %335 = mul nsw i32 2, %334
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %333, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = icmp ule i32 %339, 4096
  br i1 %340, label %341, label %427

341:                                              ; preds = %332
  %342 = load i32*, i32** %15, align 8
  %343 = load i32, i32* %11, align 4
  %344 = mul nsw i32 2, %343
  %345 = add nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %342, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32*, i32** %15, align 8
  %350 = load i32, i32* %11, align 4
  %351 = mul nsw i32 2, %350
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %348, %354
  %356 = icmp eq i32 %355, 4096
  br i1 %356, label %357, label %427

357:                                              ; preds = %341
  %358 = load i32*, i32** %15, align 8
  %359 = load i32, i32* %11, align 4
  %360 = mul nsw i32 2, %359
  %361 = add nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %358, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = icmp ule i32 %364, 4096
  br i1 %365, label %366, label %427

366:                                              ; preds = %357
  %367 = load i32*, i32** %14, align 8
  %368 = load i32, i32* %7, align 4
  %369 = mul nsw i32 2, %368
  %370 = add nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %367, i64 %371
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %29, align 4
  %374 = load i32*, i32** %15, align 8
  %375 = load i32, i32* %11, align 4
  %376 = mul nsw i32 2, %375
  %377 = add nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %374, i64 %378
  %380 = load i32, i32* %379, align 4
  store i32 %380, i32* %30, align 4
  %381 = load i32*, i32** %14, align 8
  %382 = load i32, i32* %7, align 4
  %383 = mul nsw i32 2, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %381, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = mul nsw i32 %386, 65537
  %388 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 3
  store i32 %387, i32* %391, align 4
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 2
  store i32 %387, i32* %395, align 4
  %396 = load i32*, i32** %15, align 8
  %397 = load i32, i32* %11, align 4
  %398 = mul nsw i32 2, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %396, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = mul nsw i32 %401, 65537
  %403 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %403, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 3
  store i32 %402, i32* %406, align 4
  %407 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %407, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 2
  store i32 %402, i32* %410, align 4
  %411 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %412 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %411, i32 0, i32 3
  %413 = load i64, i64* %412, align 8
  %414 = inttoptr i64 %413 to i32 (%struct.TYPE_21__*, i32**, i32**, i32**, i32**, i32*, i32, i32, i32, i32)*
  %415 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %416 = load i32**, i32*** %23, align 8
  %417 = load i32**, i32*** %24, align 8
  %418 = load i32**, i32*** %25, align 8
  %419 = load i32**, i32*** %26, align 8
  %420 = load i32**, i32*** %27, align 8
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %10, align 4
  %423 = load i32, i32* %29, align 4
  %424 = load i32, i32* %30, align 4
  %425 = load i32, i32* %7, align 4
  %426 = call i32 %414(%struct.TYPE_21__* %415, i32** %416, i32** %417, i32** %418, i32** %419, i32* %421, i32 %422, i32 %423, i32 %424, i32 %425)
  br label %489

427:                                              ; preds = %357, %341, %332, %316, %313, %310, %305
  %428 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %428, i32 0, i32 4
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %438

432:                                              ; preds = %427
  %433 = load i32, i32* %12, align 4
  %434 = icmp eq i32 %433, 1
  br i1 %434, label %435, label %438

435:                                              ; preds = %432
  %436 = load i32, i32* %13, align 4
  %437 = icmp eq i32 %436, 2
  br i1 %437, label %449, label %438

438:                                              ; preds = %435, %432, %427
  %439 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %439, i32 0, i32 3
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %461

443:                                              ; preds = %438
  %444 = load i32, i32* %12, align 4
  %445 = icmp eq i32 %444, 2
  br i1 %445, label %446, label %461

446:                                              ; preds = %443
  %447 = load i32, i32* %13, align 4
  %448 = icmp eq i32 %447, 2
  br i1 %448, label %449, label %461

449:                                              ; preds = %446, %435
  %450 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %458, label %454

454:                                              ; preds = %449
  %455 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %456 = load i32, i32* @AV_LOG_INFO, align 4
  %457 = call i32 @av_log(%struct.TYPE_21__* %455, i32 %456, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %458

458:                                              ; preds = %454, %449
  %459 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %459, i32 0, i32 2
  store i32 1, i32* %460, align 8
  br label %461

461:                                              ; preds = %458, %446, %443, %438
  %462 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %463 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %462, i32 0, i32 2
  %464 = load i32 (%struct.TYPE_21__*, i32*, i32**, i32, i32*, i32**, i32**, i32, i32**, i32*, i32, i32)*, i32 (%struct.TYPE_21__*, i32*, i32**, i32, i32*, i32**, i32**, i32, i32**, i32*, i32, i32)** %463, align 8
  %465 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %466 = load i32*, i32** %14, align 8
  %467 = load i32, i32* %7, align 4
  %468 = load i32, i32* %12, align 4
  %469 = mul nsw i32 %467, %468
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %466, i64 %470
  %472 = load i32**, i32*** %23, align 8
  %473 = load i32, i32* %12, align 4
  %474 = load i32*, i32** %15, align 8
  %475 = load i32, i32* %11, align 4
  %476 = load i32, i32* %13, align 4
  %477 = mul nsw i32 %475, %476
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %474, i64 %478
  %480 = load i32**, i32*** %24, align 8
  %481 = load i32**, i32*** %25, align 8
  %482 = load i32, i32* %13, align 4
  %483 = load i32**, i32*** %26, align 8
  %484 = load i32**, i32*** %27, align 8
  %485 = load i32*, i32** %484, align 8
  %486 = load i32, i32* %10, align 4
  %487 = load i32, i32* %7, align 4
  %488 = call i32 %464(%struct.TYPE_21__* %465, i32* %471, i32** %472, i32 %473, i32* %479, i32** %480, i32** %481, i32 %482, i32** %483, i32* %485, i32 %486, i32 %487)
  br label %489

489:                                              ; preds = %461, %366
  br label %490

490:                                              ; preds = %489, %297
  br label %491

491:                                              ; preds = %490, %229
  ret i32 1
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
