; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_volumedetect.c_logdb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_volumedetect.c_logdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DB = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @logdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @logdb(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = fdiv double %5, 0x41D0000000000000
  store double %6, double* %4, align 8
  %7 = load double, double* %3, align 8
  %8 = fcmp une double %7, 0.000000e+00
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load double, double* @MAX_DB, align 8
  store double %10, double* %2, align 8
  br label %17

11:                                               ; preds = %1
  %12 = load double, double* %4, align 8
  %13 = call i32 @log10(double %12)
  %14 = sub nsw i32 0, %13
  %15 = mul nsw i32 %14, 10
  %16 = sitofp i32 %15 to double
  store double %16, double* %2, align 8
  br label %17

17:                                               ; preds = %11, %9
  %18 = load double, double* %2, align 8
  ret double %18
}

declare dso_local i32 @log10(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
