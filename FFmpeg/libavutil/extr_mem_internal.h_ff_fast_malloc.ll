; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_mem_internal.h_ff_fast_malloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_mem_internal.h_ff_fast_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64, i32)* @ff_fast_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_fast_malloc(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = bitcast i8** %10 to i8*
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i8**
  %14 = call i32 @memcpy(i8* %11, i8** %13, i32 8)
  %15 = load i64, i64* %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp ule i64 %15, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %4
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ true, %20 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @av_assert0(i32 %29)
  store i32 0, i32* %5, align 4
  br label %60

31:                                               ; preds = %4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = udiv i64 %33, 16
  %35 = add i64 %32, %34
  %36 = add i64 %35, 32
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @FFMAX(i64 %36, i64 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @av_freep(i8* %39)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i64, i64* %8, align 8
  %45 = call i8* @av_mallocz(i64 %44)
  br label %49

46:                                               ; preds = %31
  %47 = load i64, i64* %8, align 8
  %48 = call i8* @av_malloc(i64 %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i8* [ %45, %43 ], [ %48, %46 ]
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @memcpy(i8* %51, i8** %10, i32 8)
  %53 = load i8*, i8** %10, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i64 0, i64* %8, align 8
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i64, i64* %8, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  store i32 1, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %27
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @memcpy(i8*, i8**, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @FFMAX(i64, i64) #1

declare dso_local i32 @av_freep(i8*) #1

declare dso_local i8* @av_mallocz(i64) #1

declare dso_local i8* @av_malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
