; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_init_histogram.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_init_histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@histogram_energy_boundaries = common dso_local global i8** null, align 8
@histogram_energies = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_histogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_histogram() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* @pow(double 1.000000e+01, double 0xC01BB93DD97F62B6)
  %3 = load i8**, i8*** @histogram_energy_boundaries, align 8
  %4 = getelementptr inbounds i8*, i8** %3, i64 0
  store i8* %2, i8** %4, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %20, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 1000
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = sitofp i32 %9 to double
  %11 = fdiv double %10, 1.000000e+01
  %12 = fsub double %11, 6.995000e+01
  %13 = fadd double %12, 6.910000e-01
  %14 = fdiv double %13, 1.000000e+01
  %15 = call i8* @pow(double 1.000000e+01, double %14)
  %16 = load i8**, i8*** @histogram_energies, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  store i8* %15, i8** %19, align 8
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %5

23:                                               ; preds = %5
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %25, 1001
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i32, i32* %1, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.000000e+01
  %31 = fsub double %30, 7.000000e+01
  %32 = fadd double %31, 6.910000e-01
  %33 = fdiv double %32, 1.000000e+01
  %34 = call i8* @pow(double 1.000000e+01, double %33)
  %35 = load i8**, i8*** @histogram_energy_boundaries, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %34, i8** %38, align 8
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %24

42:                                               ; preds = %24
  ret void
}

declare dso_local i8* @pow(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
