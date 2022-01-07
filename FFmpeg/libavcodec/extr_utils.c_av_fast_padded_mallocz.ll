; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utils.c_av_fast_padded_mallocz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utils.c_av_fast_padded_mallocz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_fast_padded_mallocz(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32**
  store i32** %9, i32*** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @SIZE_MAX, align 8
  %12 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %13 = sub i64 %11, %12
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32**, i32*** %7, align 8
  %17 = call i32 @av_freep(i32** %16)
  %18 = load i32*, i32** %5, align 8
  store i32 0, i32* %18, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i32**, i32*** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %24 = add i64 %22, %23
  %25 = call i32 @ff_fast_malloc(i32** %20, i32* %21, i64 %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load i32**, i32*** %7, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %32 = add i64 %30, %31
  %33 = call i32 @memset(i32* %29, i32 0, i64 %32)
  br label %34

34:                                               ; preds = %15, %27, %19
  ret void
}

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @ff_fast_malloc(i32**, i32*, i64, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
