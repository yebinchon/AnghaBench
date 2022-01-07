; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_roundds.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_roundds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @roundds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roundds(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = call double @floor(double %5)
  %7 = fsub double %4, %6
  %8 = fcmp oge double %7, 5.000000e-01
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = call i64 @ceil(double %10)
  %12 = trunc i64 %11 to i32
  %13 = call i32 @FFMIN(i32 %12, i32 32767)
  store i32 %13, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load double, double* %3, align 8
  %16 = call double @floor(double %15)
  %17 = fptosi double %16 to i32
  %18 = call i32 @FFMAX(i32 %17, i32 -32768)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local double @floor(double) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @ceil(double) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
