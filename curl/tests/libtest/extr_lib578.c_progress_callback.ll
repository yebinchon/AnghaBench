; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib578.c_progress_callback.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib578.c_progress_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libtest_arg2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@data_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"PASSED, UL data matched data size\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Progress callback called with UL %f out of %f\0A\00", align 1
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
  %12 = load i32, i32* @libtest_arg2, align 4
  %13 = call i32* @fopen(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %11, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load double, double* %7, align 8
  %16 = load double, double* %8, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %5
  %20 = load double, double* %9, align 8
  %21 = fptoui double %20 to i64
  %22 = load i64, i64* @data_size, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load double, double* %10, align 8
  %26 = fptoui double %25 to i64
  %27 = load i64, i64* @data_size, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %37

32:                                               ; preds = %24, %19
  %33 = load i32*, i32** %11, align 8
  %34 = load double, double* %10, align 8
  %35 = load double, double* %9, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), double %34, double %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @fclose(i32* %38)
  br label %40

40:                                               ; preds = %37, %5
  ret i32 0
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
