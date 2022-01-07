; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_compute_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_compute_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, float*, i64*, i64*, float*)* @compute_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_stats(i64* %0, i64 %1, float* %2, i64* %3, i64* %4, float* %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca float*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store float* %2, float** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store float* %5, float** %12, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %19 = load i64, i64* @UINT64_MAX, align 8
  store i64 %19, i64* %16, align 8
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store i64 0, i64* %13, align 8
  br label %20

20:                                               ; preds = %61, %6
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %14, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %14, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  br label %44

42:                                               ; preds = %24
  %43 = load i64, i64* %15, align 8
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i64 [ %41, %37 ], [ %43, %42 ]
  store i64 %45, i64* %15, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %16, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %13, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  br label %59

57:                                               ; preds = %44
  %58 = load i64, i64* %16, align 8
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi i64 [ %56, %52 ], [ %58, %57 ]
  store i64 %60, i64* %16, align 8
  br label %61

61:                                               ; preds = %59
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %13, align 8
  br label %20

64:                                               ; preds = %20
  %65 = load i64, i64* %14, align 8
  %66 = uitofp i64 %65 to float
  %67 = load i64, i64* %8, align 8
  %68 = uitofp i64 %67 to float
  %69 = fdiv float %66, %68
  store float %69, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store i64 0, i64* %13, align 8
  br label %70

70:                                               ; preds = %86, %64
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = uitofp i64 %78 to float
  %80 = load float, float* %17, align 4
  %81 = fsub float %79, %80
  %82 = call i64 @powf(float %81, i32 2)
  %83 = sitofp i64 %82 to float
  %84 = load float, float* %18, align 4
  %85 = fadd float %84, %83
  store float %85, float* %18, align 4
  br label %86

86:                                               ; preds = %74
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %13, align 8
  br label %70

89:                                               ; preds = %70
  %90 = load i64, i64* %8, align 8
  %91 = uitofp i64 %90 to float
  %92 = load float, float* %18, align 4
  %93 = fdiv float %92, %91
  store float %93, float* %18, align 4
  %94 = load float, float* %18, align 4
  %95 = call float @sqrtf(float %94) #3
  store float %95, float* %18, align 4
  %96 = load float, float* %17, align 4
  %97 = load float*, float** %9, align 8
  store float %96, float* %97, align 4
  %98 = load i64, i64* %15, align 8
  %99 = load i64*, i64** %10, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i64, i64* %16, align 8
  %101 = load i64*, i64** %11, align 8
  store i64 %100, i64* %101, align 8
  %102 = load float, float* %18, align 4
  %103 = load float*, float** %12, align 8
  store float %102, float* %103, align 4
  ret void
}

declare dso_local i64 @powf(float, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
