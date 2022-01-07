; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_multiply.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, i32, double*)* @multiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiply(double %0, double %1, i32 %2, double* %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %14 = load double, double* %5, align 8
  %15 = fneg double %14
  store double %15, double* %9, align 8
  %16 = load double, double* %6, align 8
  %17 = fneg double %16
  store double %17, double* %10, align 8
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %13, align 4
  br label %19

19:                                               ; preds = %81, %4
  %20 = load i32, i32* %13, align 4
  %21 = icmp sge i32 %20, 1
  br i1 %21, label %22, label %84

22:                                               ; preds = %19
  %23 = load double*, double** %8, align 8
  %24 = load i32, i32* %13, align 4
  %25 = mul nsw i32 2, %24
  %26 = add nsw i32 %25, 0
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %23, i64 %27
  %29 = load double, double* %28, align 8
  store double %29, double* %11, align 8
  %30 = load double*, double** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = mul nsw i32 2, %31
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %30, i64 %34
  %36 = load double, double* %35, align 8
  store double %36, double* %12, align 8
  %37 = load double, double* %9, align 8
  %38 = load double, double* %11, align 8
  %39 = fmul double %37, %38
  %40 = load double, double* %10, align 8
  %41 = load double, double* %12, align 8
  %42 = fmul double %40, %41
  %43 = fsub double %39, %42
  %44 = load double*, double** %8, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sub nsw i32 %45, 1
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 %47, 0
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %44, i64 %49
  %51 = load double, double* %50, align 8
  %52 = fadd double %43, %51
  %53 = load double*, double** %8, align 8
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 2, %54
  %56 = add nsw i32 %55, 0
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %53, i64 %57
  store double %52, double* %58, align 8
  %59 = load double, double* %9, align 8
  %60 = load double, double* %12, align 8
  %61 = fmul double %59, %60
  %62 = load double, double* %10, align 8
  %63 = load double, double* %11, align 8
  %64 = fmul double %62, %63
  %65 = fadd double %61, %64
  %66 = load double*, double** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %67, 1
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %66, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fadd double %65, %73
  %75 = load double*, double** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %75, i64 %79
  store double %74, double* %80, align 8
  br label %81

81:                                               ; preds = %22
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %13, align 4
  br label %19

84:                                               ; preds = %19
  %85 = load double*, double** %8, align 8
  %86 = getelementptr inbounds double, double* %85, i64 0
  %87 = load double, double* %86, align 8
  store double %87, double* %11, align 8
  %88 = load double*, double** %8, align 8
  %89 = getelementptr inbounds double, double* %88, i64 1
  %90 = load double, double* %89, align 8
  store double %90, double* %12, align 8
  %91 = load double, double* %9, align 8
  %92 = load double, double* %11, align 8
  %93 = fmul double %91, %92
  %94 = load double, double* %10, align 8
  %95 = load double, double* %12, align 8
  %96 = fmul double %94, %95
  %97 = fsub double %93, %96
  %98 = load double*, double** %8, align 8
  %99 = getelementptr inbounds double, double* %98, i64 0
  store double %97, double* %99, align 8
  %100 = load double, double* %9, align 8
  %101 = load double, double* %12, align 8
  %102 = fmul double %100, %101
  %103 = load double, double* %10, align 8
  %104 = load double, double* %11, align 8
  %105 = fmul double %103, %104
  %106 = fadd double %102, %105
  %107 = load double*, double** %8, align 8
  %108 = getelementptr inbounds double, double* %107, i64 1
  store double %106, double* %108, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
