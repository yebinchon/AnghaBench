; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_mem.c_av_fast_realloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_mem.c_av_fast_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_alloc_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @av_fast_realloc(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  %12 = icmp ule i64 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %4, align 8
  br label %45

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @max_alloc_size, align 4
  %18 = sub nsw i32 %17, 32
  %19 = sext i32 %18 to i64
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  store i32 0, i32* %22, align 4
  store i8* null, i8** %4, align 8
  br label %45

23:                                               ; preds = %15
  %24 = load i32, i32* @max_alloc_size, align 4
  %25 = sub nsw i32 %24, 32
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = udiv i64 %27, 16
  %29 = add i64 %26, %28
  %30 = add i64 %29, 32
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @FFMAX(i64 %30, i64 %31)
  %33 = call i64 @FFMIN(i32 %25, i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i8* @av_realloc(i8* %34, i64 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %40, %21, %13
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i64, i64) #1

declare dso_local i8* @av_realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
