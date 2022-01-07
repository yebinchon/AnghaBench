; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_sharedbook.c__float32_unpack.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_sharedbook.c__float32_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VQ_FMAN = common dso_local global i64 0, align 8
@VQ_FEXP_BIAS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @_float32_unpack(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = and i64 %6, 2097151
  %8 = sitofp i64 %7 to double
  store double %8, double* %3, align 8
  %9 = load i64, i64* %2, align 8
  %10 = and i64 %9, 2147483648
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 2145386496
  %14 = load i64, i64* @VQ_FMAN, align 8
  %15 = ashr i64 %13, %14
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load double, double* %3, align 8
  %20 = fneg double %19
  store double %20, double* %3, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load double, double* %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @VQ_FMAN, align 8
  %25 = sub nsw i64 %24, 1
  %26 = sub nsw i64 %23, %25
  %27 = load i64, i64* @VQ_FEXP_BIAS, align 8
  %28 = sub nsw i64 %26, %27
  %29 = call float @ldexp(double %22, i64 %28)
  ret float %29
}

declare dso_local float @ldexp(double, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
