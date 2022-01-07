; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_gamma_threshold_test.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_gamma_threshold_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"threshold \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, double, double)* @gamma_threshold_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gamma_threshold_test(i32* %0, i32 %1, i32 %2, i32 %3, double %4, double %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca [64 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  store i64 0, i64* %13, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %16 = load i64, i64* %13, align 8
  %17 = call i64 @safecat(i8* %15, i32 64, i64 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %17, i64* %13, align 8
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %19 = load i64, i64* %13, align 8
  %20 = load double, double* %11, align 8
  %21 = call i64 @safecatd(i8* %18, i32 64, i64 %19, double %20, i32 3)
  store i64 %21, i64* %13, align 8
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %23 = load i64, i64* %13, align 8
  %24 = call i64 @safecat(i8* %22, i32 64, i64 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %24, i64* %13, align 8
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %26 = load i64, i64* %13, align 8
  %27 = load double, double* %12, align 8
  %28 = call i64 @safecatd(i8* %25, i32 64, i64 %26, double %27, i32 3)
  store i64 %28, i64* %13, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load double, double* %11, align 8
  %34 = load double, double* %12, align 8
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %36 = call i32 @gamma_test(i32* %29, i32 %30, i32 %31, i32 0, i32 %32, double %33, double %34, i32 0, i32 1, i8* %35, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i64 @safecat(i8*, i32, i64, i8*) #1

declare dso_local i64 @safecatd(i8*, i32, i64, double, i32) #1

declare dso_local i32 @gamma_test(i32*, i32, i32, i32, i32, double, double, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
