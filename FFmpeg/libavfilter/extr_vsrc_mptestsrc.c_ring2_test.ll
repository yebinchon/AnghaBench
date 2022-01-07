; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_mptestsrc.c_ring2_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vsrc_mptestsrc.c_ring2_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @ring2_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring2_test(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %79, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %82

14:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %75, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %78

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 128
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 128
  %23 = call double @hypot(i32 %20, i32 %22)
  store double %23, double* %9, align 8
  %24 = load double, double* %9, align 8
  %25 = fdiv double %24, 2.000000e+01
  %26 = load double, double* %9, align 8
  %27 = fdiv double %26, 2.000000e+01
  %28 = fptosi double %27 to i32
  %29 = sitofp i32 %28 to double
  %30 = fsub double %25, %29
  store double %30, double* %10, align 8
  %31 = load double, double* %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sitofp i32 %32 to double
  %34 = fdiv double %33, 3.000000e+01
  %35 = fcmp olt double %31, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %18
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  store i32 255, i32* %44, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %46, %49
  %51 = add nsw i32 %50, 256
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %45, i64 %52
  store i32 0, i32* %53, align 4
  br label %74

54:                                               ; preds = %18
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  store i32 %55, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  %71 = add nsw i32 %70, 256
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %65, i64 %72
  store i32 %64, i32* %73, align 4
  br label %74

74:                                               ; preds = %54, %36
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %15

78:                                               ; preds = %15
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %11

82:                                               ; preds = %11
  ret void
}

declare dso_local double @hypot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
