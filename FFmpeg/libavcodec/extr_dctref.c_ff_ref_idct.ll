; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dctref.c_ff_ref_idct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dctref.c_ff_ref_idct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@coefficients = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ref_idct(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x double], align 16
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i16* %0, i16** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %56, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ult i32 %10, 64
  br i1 %11, label %12, label %59

12:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %52, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %16, label %55

16:                                               ; preds = %13
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = load i16*, i16** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %21, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = load i16*, i16** @coefficients, align 8
  %30 = load i32, i32* %5, align 4
  %31 = mul i32 %30, 8
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %31, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %29, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %38 = mul nsw i32 %28, %37
  %39 = sitofp i32 %38 to double
  %40 = load double, double* %7, align 8
  %41 = fadd double %40, %39
  store double %41, double* %7, align 8
  br label %42

42:                                               ; preds = %20
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %17

45:                                               ; preds = %17
  %46 = load double, double* %7, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [64 x double], [64 x double]* %6, i64 0, i64 %50
  store double %46, double* %51, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %13

55:                                               ; preds = %13
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, 8
  store i32 %58, i32* %3, align 4
  br label %9

59:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %108, %59
  %61 = load i32, i32* %3, align 4
  %62 = icmp ult i32 %61, 8
  br i1 %62, label %63, label %111

63:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %104, %63
  %65 = load i32, i32* %4, align 4
  %66 = icmp ult i32 %65, 8
  br i1 %66, label %67, label %107

67:                                               ; preds = %64
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %90, %67
  %69 = load i32, i32* %5, align 4
  %70 = icmp ult i32 %69, 64
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load i16*, i16** @coefficients, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %3, align 4
  %75 = add i32 %73, %74
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %72, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i32
  %80 = sitofp i32 %79 to double
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %4, align 4
  %83 = add i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [64 x double], [64 x double]* %6, i64 0, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fmul double %80, %86
  %88 = load double, double* %8, align 8
  %89 = fadd double %88, %87
  store double %89, double* %8, align 8
  br label %90

90:                                               ; preds = %71
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %91, 8
  store i32 %92, i32* %5, align 4
  br label %68

93:                                               ; preds = %68
  %94 = load double, double* %8, align 8
  %95 = fadd double %94, 5.000000e-01
  %96 = call signext i16 @floor(double %95)
  %97 = load i16*, i16** %2, align 8
  %98 = load i32, i32* %3, align 4
  %99 = mul i32 %98, 8
  %100 = load i32, i32* %4, align 4
  %101 = add i32 %99, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i16, i16* %97, i64 %102
  store i16 %96, i16* %103, align 2
  br label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %4, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %64

107:                                              ; preds = %64
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %3, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %60

111:                                              ; preds = %60
  ret void
}

declare dso_local signext i16 @floor(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
