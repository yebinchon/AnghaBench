; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_vscale.c_chr_planar_vscale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_vscale.c_chr_planar_vscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32** }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32** }
%struct.TYPE_17__ = type { i32, i64, i64, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_18__*, i32, i32)* @chr_planar_vscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chr_planar_vscale(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32**, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %281

36:                                               ; preds = %4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %11, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @AV_CEIL_RSHIFT(i32 %44, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = ashr i32 %51, %56
  store i32 %57, i32* %13, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 1, %60
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @FFMAX(i32 %61, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %70, %78
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %80, %88
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %90, %98
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i64 2
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %100, %108
  store i32 %109, i32* %18, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  store i32** %120, i32*** %19, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 2
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  store i32** %131, i32*** %20, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  store i32** %142, i32*** %21, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i64 2
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  store i32** %153, i32*** %22, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %36
  br label %170

164:                                              ; preds = %36
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %165, %168
  br label %170

170:                                              ; preds = %164, %163
  %171 = phi i32 [ 0, %163 ], [ %169, %164 ]
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %158, i64 %172
  store i32* %173, i32** %23, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %170
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i32 (%struct.TYPE_16__*, i32*, i32, i32**, i32**, i32*, i32)*
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %184 = load i32*, i32** %23, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32**, i32*** %19, align 8
  %189 = load i32**, i32*** %20, align 8
  %190 = load i32**, i32*** %21, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i32 %182(%struct.TYPE_16__* %183, i32* %184, i32 %187, i32** %188, i32** %189, i32* %192, i32 %193)
  br label %279

195:                                              ; preds = %170
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %231

200:                                              ; preds = %195
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i32 (i32*, i32*, i32, i32, i32)*
  %205 = load i32**, i32*** %19, align 8
  %206 = getelementptr inbounds i32*, i32** %205, i64 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32**, i32*** %21, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 %204(i32* %207, i32* %210, i32 %211, i32 %214, i32 0)
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = inttoptr i64 %218 to i32 (i32*, i32*, i32, i32, i32)*
  %220 = load i32**, i32*** %20, align 8
  %221 = getelementptr inbounds i32*, i32** %220, i64 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32**, i32*** %22, align 8
  %224 = getelementptr inbounds i32*, i32** %223, i64 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 %219(i32* %222, i32* %225, i32 %226, i32 %229, i32 3)
  br label %278

231:                                              ; preds = %195
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = inttoptr i64 %234 to i32 (i32*, i32, i32**, i32*, i32, i32, i32)*
  %236 = load i32*, i32** %23, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32**, i32*** %19, align 8
  %241 = load i32**, i32*** %21, align 8
  %242 = getelementptr inbounds i32*, i32** %241, i64 0
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 %235(i32* %236, i32 %239, i32** %240, i32* %243, i32 %244, i32 %247, i32 0)
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = inttoptr i64 %251 to i32 (i32*, i32, i32**, i32*, i32, i32, i32)*
  %253 = load i32*, i32** %23, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32**, i32*** %20, align 8
  %258 = load i32**, i32*** %22, align 8
  %259 = getelementptr inbounds i32*, i32** %258, i64 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %231
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = ashr i32 %272, 1
  br label %275

274:                                              ; preds = %231
  br label %275

275:                                              ; preds = %274, %269
  %276 = phi i32 [ %273, %269 ], [ 3, %274 ]
  %277 = call i32 %252(i32* %253, i32 %256, i32** %257, i32* %260, i32 %261, i32 %264, i32 %276)
  br label %278

278:                                              ; preds = %275, %200
  br label %279

279:                                              ; preds = %278, %178
  br label %280

280:                                              ; preds = %279
  store i32 1, i32* %5, align 4
  br label %281

281:                                              ; preds = %280, %35
  %282 = load i32, i32* %5, align 4
  ret i32 %282
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
