; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_backward_references_hq.c_SetCost.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_backward_references_hq.c_SetCost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i32, float*)* @SetCost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetCost(i64* %0, i64 %1, i32 %2, float* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store float* %3, float** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %25, %4
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %13, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %13, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %13, align 8
  br label %14

28:                                               ; preds = %14
  %29 = load i64, i64* %9, align 8
  %30 = call i64 @FastLog2(i64 %29)
  %31 = sitofp i64 %30 to float
  store float %31, float* %11, align 4
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %28
  store i64 0, i64* %13, align 8
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %13, align 8
  br label %36

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @FastLog2(i64 %55)
  %57 = sitofp i64 %56 to float
  %58 = fadd float %57, 2.000000e+00
  store float %58, float* %12, align 4
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %96, %54
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %59
  %64 = load i64*, i64** %5, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load float, float* %12, align 4
  %71 = load float*, float** %8, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds float, float* %71, i64 %72
  store float %70, float* %73, align 4
  br label %96

74:                                               ; preds = %63
  %75 = load float, float* %11, align 4
  %76 = load i64*, i64** %5, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @FastLog2(i64 %79)
  %81 = sitofp i64 %80 to float
  %82 = fsub float %75, %81
  %83 = load float*, float** %8, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds float, float* %83, i64 %84
  store float %82, float* %85, align 4
  %86 = load float*, float** %8, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds float, float* %86, i64 %87
  %89 = load float, float* %88, align 4
  %90 = fcmp olt float %89, 1.000000e+00
  br i1 %90, label %91, label %95

91:                                               ; preds = %74
  %92 = load float*, float** %8, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds float, float* %92, i64 %93
  store float 1.000000e+00, float* %94, align 4
  br label %95

95:                                               ; preds = %91, %74
  br label %96

96:                                               ; preds = %95, %69
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %13, align 8
  br label %59

99:                                               ; preds = %59
  ret void
}

declare dso_local i64 @FastLog2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
