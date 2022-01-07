; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_RB_SurfaceMesh.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_RB_SurfaceMesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, float }
%struct.TYPE_11__ = type { i32, i32, i32*, float*** }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@backEnd = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_SurfaceMesh(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @backEnd, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @backEnd, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store float 0.000000e+00, float* %4, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @backEnd, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load float, float* %24, align 8
  store float %25, float* %4, align 4
  br label %26

26:                                               ; preds = %21, %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 3
  %34 = call i32 @RB_CHECKOVERFLOW(i32 %29, i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = load float, float* %4, align 4
  %37 = call i32 @LerpMeshVertexes(%struct.TYPE_10__* %35, float %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = bitcast %struct.TYPE_10__* %38 to i32*
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  store i32* %44, i32** %5, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 3
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 0), align 8
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 4
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %69, %26
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %56, %61
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 2), align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 0), align 8
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 0), align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = bitcast %struct.TYPE_10__* %76 to i32*
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = bitcast i32* %82 to float*
  store float* %83, float** %6, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %10, align 4
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %126, %72
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %129

91:                                               ; preds = %87
  %92 = load float*, float** %6, align 8
  %93 = load i32, i32* %3, align 4
  %94 = mul nsw i32 %93, 2
  %95 = add nsw i32 %94, 0
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %92, i64 %96
  %98 = load float, float* %97, align 4
  %99 = load float***, float**** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 3), align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float**, float*** %99, i64 %103
  %105 = load float**, float*** %104, align 8
  %106 = getelementptr inbounds float*, float** %105, i64 0
  %107 = load float*, float** %106, align 8
  %108 = getelementptr inbounds float, float* %107, i64 0
  store float %98, float* %108, align 4
  %109 = load float*, float** %6, align 8
  %110 = load i32, i32* %3, align 4
  %111 = mul nsw i32 %110, 2
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %109, i64 %113
  %115 = load float, float* %114, align 4
  %116 = load float***, float**** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 3), align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float**, float*** %116, i64 %120
  %122 = load float**, float*** %121, align 8
  %123 = getelementptr inbounds float*, float** %122, i64 0
  %124 = load float*, float** %123, align 8
  %125 = getelementptr inbounds float, float* %124, i64 1
  store float %115, float* %125, align 4
  br label %126

126:                                              ; preds = %91
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %87

129:                                              ; preds = %87
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tess, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @RB_CHECKOVERFLOW(i32, i32) #1

declare dso_local i32 @LerpMeshVertexes(%struct.TYPE_10__*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
