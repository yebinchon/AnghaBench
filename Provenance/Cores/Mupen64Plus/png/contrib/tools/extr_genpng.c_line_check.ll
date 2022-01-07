; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_line_check.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_line_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double, double, double, double, double, double)* @line_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_check(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store double %0, double* %10, align 8
  store double %1, double* %11, align 8
  store double %2, double* %12, align 8
  store double %3, double* %13, align 8
  store double %4, double* %14, align 8
  store double %5, double* %15, align 8
  store double %6, double* %16, align 8
  store double %7, double* %17, align 8
  %23 = load double, double* %14, align 8
  %24 = load double, double* %12, align 8
  %25 = fsub double %23, %24
  store double %25, double* %18, align 8
  %26 = load double, double* %15, align 8
  %27 = load double, double* %13, align 8
  %28 = fsub double %26, %27
  store double %28, double* %19, align 8
  %29 = load double, double* %18, align 8
  %30 = load double, double* %18, align 8
  %31 = fmul double %29, %30
  %32 = load double, double* %19, align 8
  %33 = load double, double* %19, align 8
  %34 = fmul double %32, %33
  %35 = fadd double %31, %34
  store double %35, double* %20, align 8
  %36 = load double, double* %12, align 8
  %37 = load double, double* %10, align 8
  %38 = fsub double %37, %36
  store double %38, double* %10, align 8
  %39 = load double, double* %13, align 8
  %40 = load double, double* %11, align 8
  %41 = fsub double %40, %39
  store double %41, double* %11, align 8
  %42 = load double, double* %10, align 8
  %43 = load double, double* %19, align 8
  %44 = fmul double %42, %43
  %45 = load double, double* %11, align 8
  %46 = load double, double* %18, align 8
  %47 = fmul double %45, %46
  %48 = fsub double %44, %47
  store double %48, double* %21, align 8
  %49 = load double, double* %21, align 8
  %50 = load double, double* %21, align 8
  %51 = fmul double %49, %50
  %52 = load double, double* %16, align 8
  %53 = load double, double* %17, align 8
  %54 = fadd double %52, %53
  %55 = load double, double* %16, align 8
  %56 = load double, double* %17, align 8
  %57 = fadd double %55, %56
  %58 = fmul double %54, %57
  %59 = load double, double* %20, align 8
  %60 = fmul double %58, %59
  %61 = fcmp oge double %51, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %84

63:                                               ; preds = %8
  %64 = load double, double* %18, align 8
  %65 = load double, double* %10, align 8
  %66 = fmul double %64, %65
  %67 = load double, double* %19, align 8
  %68 = load double, double* %11, align 8
  %69 = fmul double %67, %68
  %70 = fadd double %66, %69
  store double %70, double* %22, align 8
  %71 = load double, double* %22, align 8
  %72 = load double, double* %17, align 8
  %73 = fneg double %72
  %74 = fcmp ogt double %71, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %63
  %76 = load double, double* %22, align 8
  %77 = load double, double* %20, align 8
  %78 = load double, double* %17, align 8
  %79 = fadd double %77, %78
  %80 = fcmp olt double %76, %79
  br label %81

81:                                               ; preds = %75, %63
  %82 = phi i1 [ false, %63 ], [ %80, %75 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %62
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
