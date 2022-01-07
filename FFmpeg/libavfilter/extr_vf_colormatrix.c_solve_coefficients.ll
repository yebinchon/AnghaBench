; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_solve_coefficients.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colormatrix.c_solve_coefficients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([3 x double]*, [3 x double]*, [3 x double]*)* @solve_coefficients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solve_coefficients([3 x double]* %0, [3 x double]* %1, [3 x double]* %2) #0 {
  %4 = alloca [3 x double]*, align 8
  %5 = alloca [3 x double]*, align 8
  %6 = alloca [3 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store [3 x double]* %0, [3 x double]** %4, align 8
  store [3 x double]* %1, [3 x double]** %5, align 8
  store [3 x double]* %2, [3 x double]** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %69, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %72

12:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %65, %12
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %68

16:                                               ; preds = %13
  %17 = load [3 x double]*, [3 x double]** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 %19
  %21 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 0, i64 0
  %22 = load double, double* %21, align 8
  %23 = load [3 x double]*, [3 x double]** %5, align 8
  %24 = getelementptr inbounds [3 x double], [3 x double]* %23, i64 0
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x double], [3 x double]* %24, i64 0, i64 %26
  %28 = load double, double* %27, align 8
  %29 = fmul double %22, %28
  %30 = load [3 x double]*, [3 x double]** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 %32
  %34 = getelementptr inbounds [3 x double], [3 x double]* %33, i64 0, i64 1
  %35 = load double, double* %34, align 8
  %36 = load [3 x double]*, [3 x double]** %5, align 8
  %37 = getelementptr inbounds [3 x double], [3 x double]* %36, i64 1
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x double], [3 x double]* %37, i64 0, i64 %39
  %41 = load double, double* %40, align 8
  %42 = fmul double %35, %41
  %43 = fadd double %29, %42
  %44 = load [3 x double]*, [3 x double]** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x double], [3 x double]* %44, i64 %46
  %48 = getelementptr inbounds [3 x double], [3 x double]* %47, i64 0, i64 2
  %49 = load double, double* %48, align 8
  %50 = load [3 x double]*, [3 x double]** %5, align 8
  %51 = getelementptr inbounds [3 x double], [3 x double]* %50, i64 2
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 0, i64 %53
  %55 = load double, double* %54, align 8
  %56 = fmul double %49, %55
  %57 = fadd double %43, %56
  %58 = load [3 x double]*, [3 x double]** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 %60
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x double], [3 x double]* %61, i64 0, i64 %63
  store double %57, double* %64, align 8
  br label %65

65:                                               ; preds = %16
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %13

68:                                               ; preds = %13
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %9

72:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
