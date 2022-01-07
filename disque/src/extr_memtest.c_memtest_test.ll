; ModuleID = '/home/carl/AnghaBench/disque/src/extr_memtest.c_memtest_test.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_memtest.c_memtest_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate %zu megabytes: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Addressing test\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Random fill\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Solid fill\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Checkerboard fill\00", align 1
@ULONG_ONEZERO = common dso_local global i32 0, align 4
@ULONG_ZEROONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memtest_test(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = mul i64 %8, 1024
  %10 = mul i64 %9, 1024
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64* @malloc(i64 %11)
  store i64* %12, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %19)
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @memtest_progress_start(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @memtest_addressing(i64* %32, i64 %33)
  %35 = call i32 (...) @memtest_progress_end()
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @memtest_progress_start(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @memtest_fill_random(i64* %38, i64 %39)
  %41 = call i32 (...) @memtest_progress_end()
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @memtest_compare_times(i64* %42, i64 %43, i32 %44, i32 4)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @memtest_progress_start(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @memtest_fill_value(i64* %48, i64 %49, i32 0, i64 -1, i8 signext 83)
  %51 = call i32 (...) @memtest_progress_end()
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @memtest_compare_times(i64* %52, i64 %53, i32 %54, i32 4)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @memtest_progress_start(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* @ULONG_ONEZERO, align 4
  %61 = load i64, i64* @ULONG_ZEROONE, align 8
  %62 = call i32 @memtest_fill_value(i64* %58, i64 %59, i32 %60, i64 %61, i8 signext 67)
  %63 = call i32 (...) @memtest_progress_end()
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @memtest_compare_times(i64* %64, i64 %65, i32 %66, i32 4)
  br label %23

68:                                               ; preds = %23
  %69 = load i64*, i64** %6, align 8
  %70 = call i32 @free(i64* %69)
  ret void
}

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memtest_progress_start(i8*, i32) #1

declare dso_local i32 @memtest_addressing(i64*, i64) #1

declare dso_local i32 @memtest_progress_end(...) #1

declare dso_local i32 @memtest_fill_random(i64*, i64) #1

declare dso_local i32 @memtest_compare_times(i64*, i64, i32, i32) #1

declare dso_local i32 @memtest_fill_value(i64*, i64, i32, i64, i8 signext) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
