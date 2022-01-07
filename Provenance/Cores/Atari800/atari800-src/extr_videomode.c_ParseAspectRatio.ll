; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_ParseAspectRatio.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_videomode.c_ParseAspectRatio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double*, double*)* @ParseAspectRatio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseAspectRatio(i8* %0, double* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call double @strtod(i8* %10, i8** %8)
  %12 = load double*, double** %6, align 8
  store double %11, double* %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load double*, double** %6, align 8
  %18 = load double, double* %17, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %3
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %16
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 58
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %4, align 4
  br label %45

29:                                               ; preds = %22
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  %32 = call double @strtod(i8* %31, i8** %9)
  %33 = load double*, double** %7, align 8
  store double %32, double* %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load double*, double** %7, align 8
  %39 = load double, double* %38, align 8
  %40 = fcmp olt double %39, 0.000000e+00
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %29
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %41, %27, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local double @strtod(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
