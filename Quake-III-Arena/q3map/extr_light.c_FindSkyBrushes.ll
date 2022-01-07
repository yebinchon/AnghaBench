; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_FindSkyBrushes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_FindSkyBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32**, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@numbrushes = common dso_local global i32 0, align 4
@dbrushes = common dso_local global %struct.TYPE_15__* null, align 8
@dbrushsides = common dso_local global %struct.TYPE_14__* null, align 8
@dshaders = common dso_local global %struct.TYPE_16__* null, align 8
@SURF_SKY = common dso_local global i32 0, align 4
@skyBrushes = common dso_local global %struct.TYPE_12__* null, align 8
@numSkyBrushes = common dso_local global i64 0, align 8
@dplanes = common dso_local global %struct.TYPE_18__* null, align 8
@sunDirection = common dso_local global i32 0, align 4
@numDrawSurfaces = common dso_local global i32 0, align 4
@drawSurfaces = common dso_local global %struct.TYPE_17__* null, align 8
@sunLight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindSkyBrushes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %178, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @numbrushes, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %181

11:                                               ; preds = %7
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dbrushes, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i64 %14
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %174, %11
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %177

22:                                               ; preds = %16
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dbrushsides, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i64 %29
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %6, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dshaders, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SURF_SKY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %173

41:                                               ; preds = %22
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @skyBrushes, align 8
  %43 = load i64, i64* @numSkyBrushes, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 %43
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %4, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %47, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dplanes, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dbrushsides, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 0
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 0, %60
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %62, i32* %68, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dplanes, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dbrushsides, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %82, i32* %88, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dplanes, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dbrushsides, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 0, %101
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %103, i32* %109, align 4
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dplanes, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dbrushsides, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 3
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 %123, i32* %129, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dplanes, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dbrushsides, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 0, %142
  %144 = sub nsw i32 %143, 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32**, i32*** %146, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 %144, i32* %150, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dplanes, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** @dbrushsides, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 5
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  store i32 %164, i32* %170, align 4
  %171 = load i64, i64* @numSkyBrushes, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* @numSkyBrushes, align 8
  br label %177

173:                                              ; preds = %22
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %2, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %2, align 4
  br label %16

177:                                              ; preds = %41, %16
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %1, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %1, align 4
  br label %7

181:                                              ; preds = %7
  %182 = load i32, i32* @sunDirection, align 4
  %183 = load i32, i32* @sunDirection, align 4
  %184 = call i32 @VectorNormalize(i32 %182, i32 %183)
  store i32 0, i32* %1, align 4
  br label %185

185:                                              ; preds = %219, %181
  %186 = load i32, i32* %1, align 4
  %187 = load i32, i32* @numDrawSurfaces, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %222

189:                                              ; preds = %185
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** @dshaders, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** @drawSurfaces, align 8
  %192 = load i32, i32* %1, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call %struct.TYPE_13__* @ShaderInfoForShader(i32 %199)
  store %struct.TYPE_13__* %200, %struct.TYPE_13__** %5, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SURF_SKY, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %189
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @sunLight, align 4
  %212 = call i32 @VectorCopy(i32 %210, i32 %211)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @sunDirection, align 4
  %217 = call i32 @VectorCopy(i32 %215, i32 %216)
  br label %222

218:                                              ; preds = %189
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %1, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %1, align 4
  br label %185

222:                                              ; preds = %207, %185
  ret void
}

declare dso_local i32 @VectorNormalize(i32, i32) #1

declare dso_local %struct.TYPE_13__* @ShaderInfoForShader(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
