; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisdec.c_vorbisfloat2float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisdec.c_vorbisfloat2float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32)* @vorbisfloat2float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @vorbisfloat2float(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 2097151
  %7 = uitofp i32 %6 to double
  store double %7, double* %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = and i64 %9, 2145386496
  %11 = ashr i64 %10, 21
  store i64 %11, i64* %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, -2147483648
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load double, double* %3, align 8
  %17 = fneg double %16
  store double %17, double* %3, align 8
  br label %18

18:                                               ; preds = %15, %1
  %19 = load double, double* %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = sub nsw i64 %20, 20
  %22 = sub nsw i64 %21, 768
  %23 = call float @ldexp(double %19, i64 %22)
  ret float %23
}

declare dso_local float @ldexp(double, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
