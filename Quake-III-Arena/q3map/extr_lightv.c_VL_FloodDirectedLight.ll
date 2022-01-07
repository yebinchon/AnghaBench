; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_FloodDirectedLight.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_VL_FloodDirectedLight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i64, float, i32 }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_15__, i32*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32, i8* }

@LDAT_NOSCALE = common dso_local global i64 0, align 8
@MAX_WORLD_COORD = common dso_local global float 0.000000e+00, align 4
@LDAT_LINEAR = common dso_local global i64 0, align 8
@lightLinearScale = common dso_local global float 0.000000e+00, align 4
@VOLUME_DIRECTED = common dso_local global i32 0, align 4
@dleafs = common dso_local global %struct.TYPE_19__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VL_FloodDirectedLight(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LDAT_NOSCALE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load float, float* @MAX_WORLD_COORD, align 4
  store float %17, float* %8, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LDAT_LINEAR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load float, float* %26, align 8
  %28 = load float, float* @lightLinearScale, align 4
  %29 = fmul float %27, %28
  store float %29, float* %8, align 4
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load float, float* %32, align 8
  %34 = call float @sqrt(float %33)
  store float %34, float* %8, align 4
  br label %35

35:                                               ; preds = %30, %24
  br label %36

36:                                               ; preds = %35, %16
  %37 = call i32 @memset(%struct.TYPE_18__* %9, i32 0, i32 64)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %132, %36
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %135

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load float, float* %8, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @VectorMA(i32 %51, float %52, i32 %55, i32 %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = srem i32 %67, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %65, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @VectorSubtract(i32 %74, i32 %81, i32 %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @CrossProduct(i32 %86, i32 %87, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @VectorNormalize(i32 %102, i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @DotProduct(i32 %117, i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 7
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  store i8* %125, i8** %131, align 8
  br label %132

132:                                              ; preds = %44
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %38

135:                                              ; preds = %38
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %138, i32* %139, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @VectorCopy(i32 %142, i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @VectorInverse(i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @DotProduct(i32 %153, i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  store i8* %158, i8** %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  %163 = bitcast %struct.TYPE_15__* %161 to i8*
  %164 = bitcast %struct.TYPE_15__* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 16, i1 false)
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 -1, i32* %165, align 4
  %166 = load i32, i32* @VOLUME_DIRECTED, align 4
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store i32 %166, i32* %167, align 4
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** @dleafs, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 %173, i32* %174, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @VL_R_FloodLight(%struct.TYPE_17__* %175, %struct.TYPE_18__* %9, i32 %177, i32 0)
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %135
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %184 = call i32 @VL_R_CastLightAtSurface(%struct.TYPE_17__* %183, %struct.TYPE_18__* %9)
  br label %185

185:                                              ; preds = %182, %135
  ret void
}

declare dso_local float @sqrt(float) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @CrossProduct(i32, i32, i32) #1

declare dso_local i32 @VectorNormalize(i32, i32) #1

declare dso_local i8* @DotProduct(i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorInverse(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VL_R_FloodLight(%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @VL_R_CastLightAtSurface(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
