; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake.c_block_angle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake.c_block_angle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, i32, i32, i32, %struct.TYPE_3__*)* @block_angle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @block_angle(i32 %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sub nsw i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %17, %18
  %20 = call double @atan2(i32 %16, i32 %19)
  store double %20, double* %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  %35 = call double @atan2(i32 %27, i32 %34)
  store double %35, double* %12, align 8
  %36 = load double, double* %12, align 8
  %37 = load double, double* %11, align 8
  %38 = fsub double %36, %37
  store double %38, double* %13, align 8
  %39 = load double, double* %13, align 8
  %40 = load double, double* @M_PI, align 8
  %41 = fcmp ogt double %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %5
  %43 = load double, double* %13, align 8
  %44 = load double, double* @M_PI, align 8
  %45 = fmul double 2.000000e+00, %44
  %46 = fsub double %43, %45
  br label %61

47:                                               ; preds = %5
  %48 = load double, double* %13, align 8
  %49 = load double, double* @M_PI, align 8
  %50 = fneg double %49
  %51 = fcmp olt double %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load double, double* %13, align 8
  %54 = load double, double* @M_PI, align 8
  %55 = fmul double 2.000000e+00, %54
  %56 = fadd double %53, %55
  br label %59

57:                                               ; preds = %47
  %58 = load double, double* %13, align 8
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi double [ %56, %52 ], [ %58, %57 ]
  br label %61

61:                                               ; preds = %59, %42
  %62 = phi double [ %46, %42 ], [ %60, %59 ]
  ret double %62
}

declare dso_local double @atan2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
