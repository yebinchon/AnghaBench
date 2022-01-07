; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_build_basis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_build_basis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BASIS_SHIFT = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@basis = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @build_basis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_basis(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = call i32 (...) @emms_c()
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %101, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %104

14:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %97, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %100

18:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %93, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %96

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %89, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %92

26:                                               ; preds = %23
  %27 = load i32, i32* @BASIS_SHIFT, align 4
  %28 = shl i32 1, %27
  %29 = sitofp i32 %28 to double
  %30 = fmul double 2.500000e-01, %29
  store double %30, double* %7, align 8
  %31 = load i32, i32* %3, align 4
  %32 = mul nsw i32 8, %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = call double @sqrt(double 5.000000e-01) #3
  %44 = load double, double* %7, align 8
  %45 = fmul double %44, %43
  store double %45, double* %7, align 8
  br label %46

46:                                               ; preds = %42, %26
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = call double @sqrt(double 5.000000e-01) #3
  %51 = load double, double* %7, align 8
  %52 = fmul double %51, %50
  store double %52, double* %7, align 8
  br label %53

53:                                               ; preds = %49, %46
  %54 = load double, double* %7, align 8
  %55 = load double, double* @M_PI, align 8
  %56 = fdiv double %55, 8.000000e+00
  %57 = load i32, i32* %3, align 4
  %58 = sitofp i32 %57 to double
  %59 = fmul double %56, %58
  %60 = load i32, i32* %5, align 4
  %61 = sitofp i32 %60 to double
  %62 = fadd double %61, 5.000000e-01
  %63 = fmul double %59, %62
  %64 = call double @cos(double %63) #3
  %65 = fmul double %54, %64
  %66 = load double, double* @M_PI, align 8
  %67 = fdiv double %66, 8.000000e+00
  %68 = load i32, i32* %4, align 4
  %69 = sitofp i32 %68 to double
  %70 = fmul double %67, %69
  %71 = load i32, i32* %6, align 4
  %72 = sitofp i32 %71 to double
  %73 = fadd double %72, 5.000000e-01
  %74 = fmul double %70, %73
  %75 = call double @cos(double %74) #3
  %76 = fmul double %65, %75
  %77 = call i32 @lrintf(double %76)
  %78 = load i32**, i32*** @basis, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 8, %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  store i32 %77, i32* %88, align 4
  br label %89

89:                                               ; preds = %53
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %23

92:                                               ; preds = %23
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %19

96:                                               ; preds = %19
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %15

100:                                              ; preds = %15
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %11

104:                                              ; preds = %11
  ret void
}

declare dso_local i32 @emms_c(...) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @lrintf(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
