; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_add_wave0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_add_wave0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, float** }

@amplitude_tab = common dso_local global float* null, align 8
@sin_table = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, i32)* @add_wave0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_wave0(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %21, %6
  %23 = load float*, float** @amplitude_tab, align 8
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, 63
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %23, i64 %26
  %28 = load float, float* %27, align 4
  store float %28, float* %13, align 4
  %29 = load float, float* %13, align 4
  %30 = load float*, float** @sin_table, align 8
  %31 = load i32, i32* %12, align 4
  %32 = shl i32 %31, 6
  %33 = and i32 %32, 511
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %30, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fmul float %29, %36
  store float %37, float* %14, align 4
  %38 = load float, float* %13, align 4
  %39 = load float*, float** @sin_table, align 8
  %40 = load i32, i32* %12, align 4
  %41 = shl i32 %40, 6
  %42 = add nsw i32 %41, 128
  %43 = and i32 %42, 511
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %39, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fmul float %38, %46
  store float %47, float* %15, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %52, %57
  store i32 %58, i32* %16, align 4
  %59 = load float, float* %14, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load float**, float*** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float*, float** %62, i64 %64
  %66 = load float*, float** %65, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  %70 = load float, float* %69, align 4
  %71 = fadd float %70, %59
  store float %71, float* %69, align 4
  %72 = load float, float* %15, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load float**, float*** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 2, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float*, float** %75, i64 %78
  %80 = load float*, float** %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load float, float* %83, align 4
  %85 = fadd float %84, %72
  store float %85, float* %83, align 4
  %86 = load float, float* %14, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load float**, float*** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float*, float** %89, i64 %91
  %93 = load float*, float** %92, align 8
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %93, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fsub float %98, %86
  store float %99, float* %97, align 4
  %100 = load float, float* %15, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load float**, float*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 2, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float*, float** %103, i64 %106
  %108 = load float*, float** %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %108, i64 %111
  %113 = load float, float* %112, align 4
  %114 = fsub float %113, %100
  store float %114, float* %112, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
