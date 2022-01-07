; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dctref.c_ff_ref_fdct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dctref.c_ff_ref_fdct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@coefficients = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_ref_fdct(i16* %0) #0 {
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

9:                                                ; preds = %57, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ult i32 %10, 64
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %53, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = load i16*, i16** @coefficients, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %21, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = sext i16 %27 to i32
  %29 = load i16*, i16** %2, align 8
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
  %47 = fmul double %46, 8.000000e+00
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [64 x double], [64 x double]* %6, i64 0, i64 %51
  store double %47, double* %52, align 8
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %13

56:                                               ; preds = %13
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add i32 %58, 8
  store i32 %59, i32* %3, align 4
  br label %9

60:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %109, %60
  %62 = load i32, i32* %4, align 4
  %63 = icmp ult i32 %62, 8
  br i1 %63, label %64, label %112

64:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %105, %64
  %66 = load i32, i32* %3, align 4
  %67 = icmp ult i32 %66, 64
  br i1 %67, label %68, label %108

68:                                               ; preds = %65
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %92, %68
  %70 = load i32, i32* %5, align 4
  %71 = icmp ult i32 %70, 8
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %73, %74
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [64 x double], [64 x double]* %6, i64 0, i64 %76
  %78 = load double, double* %77, align 8
  %79 = load i16*, i16** @coefficients, align 8
  %80 = load i32, i32* %4, align 4
  %81 = mul i32 %80, 8
  %82 = load i32, i32* %5, align 4
  %83 = add i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i16, i16* %79, i64 %84
  %86 = load i16, i16* %85, align 2
  %87 = sext i16 %86 to i32
  %88 = sitofp i32 %87 to double
  %89 = fmul double %78, %88
  %90 = load double, double* %8, align 8
  %91 = fadd double %90, %89
  store double %91, double* %8, align 8
  br label %92

92:                                               ; preds = %72
  %93 = load i32, i32* %5, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %69

95:                                               ; preds = %69
  %96 = load double, double* %8, align 8
  %97 = fadd double %96, 0x3FDFFFFFFFFFB9A2
  %98 = call signext i16 @floor(double %97)
  %99 = load i16*, i16** %2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = add i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i16, i16* %99, i64 %103
  store i16 %98, i16* %104, align 2
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %3, align 4
  %107 = add i32 %106, 8
  store i32 %107, i32* %3, align 4
  br label %65

108:                                              ; preds = %65
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %4, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %4, align 4
  br label %61

112:                                              ; preds = %61
  ret void
}

declare dso_local signext i16 @floor(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
