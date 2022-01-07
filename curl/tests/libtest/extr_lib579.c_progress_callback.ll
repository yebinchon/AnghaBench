; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib579.c_progress_callback.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib579.c_progress_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progress_callback.prev_ultotal = internal global i32 -1, align 4
@progress_callback.prev_ulnow = internal global i32 -1, align 4
@libtest_arg2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Progress callback called with UL %d out of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double, double, double, double)* @progress_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @progress_callback(i8* %0, double %1, double %2, double %3, double %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load double, double* %7, align 8
  %14 = load double, double* %8, align 8
  %15 = load i32, i32* @progress_callback.prev_ultotal, align 4
  %16 = load double, double* %9, align 8
  %17 = fptosi double %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @progress_callback.prev_ulnow, align 4
  %21 = load double, double* %10, align 8
  %22 = fptosi double %21 to i32
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %19, %5
  %25 = load i32, i32* @libtest_arg2, align 4
  %26 = call i32* @fopen(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32*, i32** %11, align 8
  %31 = load double, double* %10, align 8
  %32 = fptosi double %31 to i32
  %33 = load double, double* %9, align 8
  %34 = fptosi double %33 to i32
  %35 = call i32 @fprintf(i32* %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34)
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @fclose(i32* %36)
  br label %38

38:                                               ; preds = %29, %24
  %39 = load double, double* %10, align 8
  %40 = fptosi double %39 to i32
  store i32 %40, i32* @progress_callback.prev_ulnow, align 4
  %41 = load double, double* %9, align 8
  %42 = fptosi double %41 to i32
  store i32 %42, i32* @progress_callback.prev_ultotal, align 4
  br label %43

43:                                               ; preds = %38, %19
  ret i32 0
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
