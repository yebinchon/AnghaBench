; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_GenerateFacetFor3Points.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_GenerateFacetFor3Points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32*, i32, i32*, i32**, i64 }
%struct.TYPE_16__ = type { i32*, i32 }

@qfalse = common dso_local global i32 0, align 4
@numfacets = common dso_local global i32 0, align 4
@surfaceOrigin = common dso_local global i32* null, align 8
@drawSurfaces = common dso_local global i32* null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VL_GenerateFacetFor3Points(i32* %0, i32* %1, %struct.TYPE_15__* %2, %struct.TYPE_16__* %3, %struct.TYPE_16__* %4, %struct.TYPE_16__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %13, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @VL_PlaneFromPoints(i32* %17, i32 %20, i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %6
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* @qfalse, align 4
  store i32 %32, i32* %7, align 4
  br label %257

33:                                               ; preds = %6
  %34 = load i32, i32* @numfacets, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @numfacets, align 4
  %36 = sext i32 %34 to i64
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 5
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** @surfaceOrigin, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** @drawSurfaces, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @VectorAdd(i32 %41, i32 %50, i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** @surfaceOrigin, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** @drawSurfaces, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @VectorAdd(i32 %59, i32 %68, i32 %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** @surfaceOrigin, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** @drawSurfaces, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = getelementptr inbounds i32, i32* %78, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @VectorAdd(i32 %77, i32 %86, i32 %91)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 4
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %97, i32* %103, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 4
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %108, i32* %114, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 4
  %122 = load i32**, i32*** %121, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  store i32 %119, i32* %125, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 4
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 %130, i32* %136, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 4
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 2
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %141, i32* %147, align 4
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 4
  %155 = load i32**, i32*** %154, align 8
  %156 = getelementptr inbounds i32*, i32** %155, i64 2
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 %152, i32* %158, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @VL_GenerateBoundaryForPoints(i32* %162, i32* %164, i32 %169, i32 %174)
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @VL_GenerateBoundaryForPoints(i32* %179, i32* %181, i32 %186, i32 %191)
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @VL_GenerateBoundaryForPoints(i32* %196, i32* %198, i32 %203, i32 %208)
  store i32 0, i32* %15, align 4
  br label %210

210:                                              ; preds = %238, %33
  %211 = load i32, i32* %15, align 4
  %212 = icmp slt i32 %211, 3
  br i1 %212, label %213, label %241

213:                                              ; preds = %210
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, 1
  %219 = srem i32 %218, 3
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @VectorSubtract(i32 %222, i32 %229, i32 %230)
  %232 = load i32, i32* %14, align 4
  %233 = call double @VectorLength(i32 %232)
  %234 = fcmp olt double %233, 1.000000e-01
  br i1 %234, label %235, label %237

235:                                              ; preds = %213
  %236 = load i32, i32* @qfalse, align 4
  store i32 %236, i32* %7, align 4
  br label %257

237:                                              ; preds = %213
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %15, align 4
  br label %210

241:                                              ; preds = %210
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %246 = call i32 @VL_TextureMatrixFromPoints(%struct.TYPE_15__* %242, %struct.TYPE_16__* %243, %struct.TYPE_16__* %244, %struct.TYPE_16__* %245)
  %247 = load i32*, i32** %8, align 8
  %248 = load i32*, i32** %9, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %253 = call i32 @VL_LightmapMatrixFromPoints(i32* %247, i32* %248, %struct.TYPE_15__* %249, %struct.TYPE_16__* %250, %struct.TYPE_16__* %251, %struct.TYPE_16__* %252)
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  store i32 3, i32* %255, align 8
  %256 = load i32, i32* @qtrue, align 4
  store i32 %256, i32* %7, align 4
  br label %257

257:                                              ; preds = %241, %235, %29
  %258 = load i32, i32* %7, align 4
  ret i32 %258
}

declare dso_local i32 @VL_PlaneFromPoints(i32*, i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VL_GenerateBoundaryForPoints(i32*, i32*, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local double @VectorLength(i32) #1

declare dso_local i32 @VL_TextureMatrixFromPoints(%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @VL_LightmapMatrixFromPoints(i32*, i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
