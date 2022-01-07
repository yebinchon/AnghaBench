; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_expand.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float*, i32*, i32, float, i64*, i64*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @expand(float* %0, float* %1, i32* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = call i8* @calloc(i32 1, i32 64)
  %12 = bitcast i8* %11 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %7, align 8
  %13 = load float*, float** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store float* %13, float** %15, align 8
  %16 = call i8* @calloc(i32 362, i32 8)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 8
  store i8* %16, i8** %18, align 8
  %19 = call i8* @calloc(i32 362, i32 4)
  %20 = bitcast i8* %19 to i64*
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  store i64* %20, i64** %22, align 8
  %23 = call i8* @calloc(i32 362, i32 4)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = call i8* @calloc(i32 362, i32 4)
  %27 = bitcast i8* %26 to float*
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store float* %27, float** %29, align 8
  %30 = call i8* @calloc(i32 362, i32 4)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = call i8* @calloc(i32 362, i32 4)
  %35 = bitcast i8* %34 to i64*
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 6
  store i64* %35, i64** %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i32 1, i32* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load float*, float** %4, align 8
  %42 = call float* @network_predict_rotations(i32* %40, float* %41)
  store float* %42, float** %9, align 8
  %43 = load float*, float** %9, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @copy_cpu(i32 362, float* %43, i32 1, i64* %46, i32 1)
  %48 = load float*, float** %9, align 8
  %49 = getelementptr inbounds float, float* %48, i64 362
  %50 = load float, float* %49, align 4
  %51 = fmul float 2.000000e+00, %50
  %52 = fsub float %51, 1.000000e+00
  store float %52, float* %10, align 4
  %53 = load float, float* %10, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store float %53, float* %55, align 4
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %106, %3
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 362
  br i1 %58, label %59, label %109

59:                                               ; preds = %56
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 0, i32* %71, align 4
  %72 = load float, float* %10, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load float*, float** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  store float %72, float* %78, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 361
  br i1 %80, label %81, label %105

81:                                               ; preds = %59
  %82 = load float*, float** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @occupied(float* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 -1, i32* %92, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load float*, float** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  store float -1.000000e+00, float* %98, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 5
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %86, %81, %59
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %56

109:                                              ; preds = %56
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  ret %struct.TYPE_3__* %110
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local float* @network_predict_rotations(i32*, float*) #1

declare dso_local i32 @copy_cpu(i32, float*, i32, i64*, i32) #1

declare dso_local i64 @occupied(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
