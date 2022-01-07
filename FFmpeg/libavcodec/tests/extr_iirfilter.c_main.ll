; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_iirfilter.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_iirfilter.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FFIIRFilterCoeffs = type { i32 }
%struct.FFIIRFilterState = type { i32 }

@SIZE = common dso_local global i32 0, align 4
@FF_FILTER_TYPE_BUTTERWORTH = common dso_local global i32 0, align 4
@FF_FILTER_MODE_LOWPASS = common dso_local global i32 0, align 4
@FILT_ORDER = common dso_local global i32 0, align 4
@INT16_MAX = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [9 x i8] c"%6d %6d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FFIIRFilterCoeffs*, align 8
  %3 = alloca %struct.FFIIRFilterState*, align 8
  %4 = alloca float, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.FFIIRFilterCoeffs* null, %struct.FFIIRFilterCoeffs** %2, align 8
  store %struct.FFIIRFilterState* null, %struct.FFIIRFilterState** %3, align 8
  store float 0x3FD99999A0000000, float* %4, align 4
  %9 = load i32, i32* @SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i32, i32* @FF_FILTER_TYPE_BUTTERWORTH, align 4
  %17 = load i32, i32* @FF_FILTER_MODE_LOWPASS, align 4
  %18 = load i32, i32* @FILT_ORDER, align 4
  %19 = load float, float* %4, align 4
  %20 = call %struct.FFIIRFilterCoeffs* @ff_iir_filter_init_coeffs(i32* null, i32 %16, i32 %17, i32 %18, float %19, double 0.000000e+00, double 0.000000e+00)
  store %struct.FFIIRFilterCoeffs* %20, %struct.FFIIRFilterCoeffs** %2, align 8
  %21 = load i32, i32* @FILT_ORDER, align 4
  %22 = call %struct.FFIIRFilterState* @ff_iir_filter_init_state(i32 %21)
  store %struct.FFIIRFilterState* %22, %struct.FFIIRFilterState** %3, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %47, %0
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load double, double* @INT16_MAX, align 8
  %29 = fmul double 7.500000e-01, %28
  %30 = load double, double* @M_PI, align 8
  %31 = fmul double 5.000000e-01, %30
  %32 = load i32, i32* %8, align 4
  %33 = sitofp i32 %32 to double
  %34 = fmul double %31, %33
  %35 = load i32, i32* %8, align 4
  %36 = sitofp i32 %35 to double
  %37 = fmul double %34, %36
  %38 = load i32, i32* @SIZE, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %37, %39
  %41 = call double @sin(double %40) #1
  %42 = fmul double %29, %41
  %43 = call i32 @lrint(double %42)
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %12, i64 %45
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %27
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.FFIIRFilterCoeffs*, %struct.FFIIRFilterCoeffs** %2, align 8
  %52 = load %struct.FFIIRFilterState*, %struct.FFIIRFilterState** %3, align 8
  %53 = load i32, i32* @SIZE, align 4
  %54 = call i32 @ff_iir_filter(%struct.FFIIRFilterCoeffs* %51, %struct.FFIIRFilterState* %52, i32 %53, i32* %12, i32 1, i32* %15, i32 1)
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %69, %50
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @SIZE, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %12, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %15, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %55

72:                                               ; preds = %55
  %73 = call i32 @ff_iir_filter_free_coeffsp(%struct.FFIIRFilterCoeffs** %2)
  %74 = call i32 @ff_iir_filter_free_statep(%struct.FFIIRFilterState** %3)
  store i32 0, i32* %1, align 4
  %75 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %1, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.FFIIRFilterCoeffs* @ff_iir_filter_init_coeffs(i32*, i32, i32, i32, float, double, double) #2

declare dso_local %struct.FFIIRFilterState* @ff_iir_filter_init_state(i32) #2

declare dso_local i32 @lrint(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #3

declare dso_local i32 @ff_iir_filter(%struct.FFIIRFilterCoeffs*, %struct.FFIIRFilterState*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @printf(i8*, i32, i32) #2

declare dso_local i32 @ff_iir_filter_free_coeffsp(%struct.FFIIRFilterCoeffs**) #2

declare dso_local i32 @ff_iir_filter_free_statep(%struct.FFIIRFilterState**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
