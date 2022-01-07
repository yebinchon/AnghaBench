; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_hscale.c_lum_h_scale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_hscale.c_lum_h_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)*, i32 (i32*, i32)* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_15__*, i64, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32** }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32** }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, i32, i32)* @lum_h_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lum_h_scale(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %9, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %259, %4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %262

38:                                               ; preds = %34
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  store i32** %46, i32*** %14, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32**, i32*** %53, align 8
  store i32** %54, i32*** %15, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %55, %56
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %57, %65
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %67, %68
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %69, %77
  store i32 %78, i32* %17, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)*, i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)** %80, align 8
  %82 = icmp ne i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)* %81, null
  br i1 %82, label %83, label %102

83:                                               ; preds = %38
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)*, i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)** %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = load i32**, i32*** %15, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32**, i32*** %14, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i32 %86(%struct.TYPE_19__* %87, i32* %92, i32 %93, i32* %98, i32 %99, i32 %100)
  br label %128

102:                                              ; preds = %38
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32, i32)** %104, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %107 = load i32**, i32*** %15, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32**, i32*** %14, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 %105(%struct.TYPE_19__* %106, i32* %111, i32 %112, i32* %117, i32 %120, i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %102, %83
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  %131 = load i32 (i32*, i32)*, i32 (i32*, i32)** %130, align 8
  %132 = icmp ne i32 (i32*, i32)* %131, null
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  %136 = load i32 (i32*, i32)*, i32 (i32*, i32)** %135, align 8
  %137 = load i32**, i32*** %15, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 %136(i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %133, %128
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %258

158:                                              ; preds = %144
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i64 3
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32**, i32*** %165, align 8
  store i32** %166, i32*** %14, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i64 3
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 2
  %174 = load i32**, i32*** %173, align 8
  store i32** %174, i32*** %15, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %175, %176
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 3
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sub nsw i32 %177, %185
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %187, %188
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i64 3
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %189, %197
  store i32 %198, i32* %17, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i64 3
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  %210 = load i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)*, i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)** %209, align 8
  %211 = icmp ne i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)* %210, null
  br i1 %211, label %212, label %231

212:                                              ; preds = %158
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 1
  %215 = load i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)*, i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32)** %214, align 8
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %217 = load i32**, i32*** %15, align 8
  %218 = load i32, i32* %17, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = load i32**, i32*** %14, align 8
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %223, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %12, align 4
  %230 = call i32 %215(%struct.TYPE_19__* %216, i32* %221, i32 %222, i32* %227, i32 %228, i32 %229)
  br label %257

231:                                              ; preds = %158
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32*, i32, i32*, i32, i32, i32)** %233, align 8
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %236 = load i32**, i32*** %15, align 8
  %237 = load i32, i32* %17, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = load i32**, i32*** %14, align 8
  %243 = load i32, i32* %16, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32*, i32** %242, i64 %244
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 %234(%struct.TYPE_19__* %235, i32* %240, i32 %241, i32* %246, i32 %249, i32 %252, i32 %255)
  br label %257

257:                                              ; preds = %231, %212
  br label %258

258:                                              ; preds = %257, %144
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %13, align 4
  br label %34

262:                                              ; preds = %34
  %263 = load i32, i32* %8, align 4
  ret i32 %263
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
