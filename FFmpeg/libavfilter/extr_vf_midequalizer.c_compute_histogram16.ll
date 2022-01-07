; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_midequalizer.c_compute_histogram16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_midequalizer.c_compute_histogram16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32, i32, float*, i64)* @compute_histogram16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_histogram16(i64* %0, i32 %1, i32 %2, i32 %3, float* %4, i64 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load float*, float** %11, align 8
  %16 = load i64, i64* %12, align 8
  %17 = mul i64 %16, 4
  %18 = call i32 @memset(float* %15, i32 0, i64 %17)
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %46, %6
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load float*, float** %11, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds float, float* %29, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fadd float %36, 1.000000e+00
  store float %37, float* %35, align 4
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load i32, i32* %8, align 4
  %43 = load i64*, i64** %7, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64* %45, i64** %7, align 8
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %19

49:                                               ; preds = %19
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %12, align 8
  %54 = sub i64 %53, 1
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load float*, float** %11, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float*, float** %11, align 8
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %62, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fadd float %67, %61
  store float %68, float* %66, align 4
  %69 = load i64, i64* %12, align 8
  %70 = uitofp i64 %69 to float
  %71 = load float*, float** %11, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fdiv float %75, %70
  store float %76, float* %74, align 4
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %50

80:                                               ; preds = %50
  %81 = load i64, i64* %12, align 8
  %82 = uitofp i64 %81 to float
  %83 = load float*, float** %11, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fdiv float %87, %82
  store float %88, float* %86, align 4
  ret void
}

declare dso_local i32 @memset(float*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
