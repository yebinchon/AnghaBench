; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_fft.c_fft_ref_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_fft.c_fft_ref_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double }

@exptab = common dso_local global %struct.TYPE_3__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fft_ref_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fft_ref_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sdiv i32 %13, 2
  %15 = call %struct.TYPE_3__* @av_malloc_array(i32 %14, i32 16)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** @exptab, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @exptab, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %64

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %60, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %24, 2
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  %28 = load i32, i32* @M_PI, align 4
  %29 = mul nsw i32 2, %28
  %30 = sitofp i32 %29 to float
  %31 = load i32, i32* %6, align 4
  %32 = sitofp i32 %31 to float
  %33 = fmul float %30, %32
  %34 = load i32, i32* %7, align 4
  %35 = sitofp i32 %34 to float
  %36 = fdiv float %33, %35
  %37 = fpext float %36 to double
  store double %37, double* %8, align 8
  %38 = load double, double* %8, align 8
  %39 = call double @cos(double %38) #3
  store double %39, double* %9, align 8
  %40 = load double, double* %8, align 8
  %41 = call double @sin(double %40) #3
  store double %41, double* %10, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %27
  %45 = load double, double* %10, align 8
  %46 = fneg double %45
  store double %46, double* %10, align 8
  br label %47

47:                                               ; preds = %44, %27
  %48 = load double, double* %9, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @exptab, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store double %48, double* %53, align 8
  %54 = load double, double* %10, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @exptab, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store double %54, double* %59, align 8
  br label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %22

63:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_3__* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
