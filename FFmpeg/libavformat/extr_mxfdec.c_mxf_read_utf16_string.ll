; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_read_utf16_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_read_utf16_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i32)* @mxf_read_utf16_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_read_utf16_string(i32* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @INT_MAX, align 4
  %17 = sdiv i32 %16, 2
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %64

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 %23, %25
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i8* @av_malloc(i64 %29)
  %31 = load i8**, i8*** %8, align 8
  store i8* %30, i8** %31, align 8
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %5, align 4
  br label %64

38:                                               ; preds = %22
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i8**, i8*** %8, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @avio_get_str16be(i32* %42, i32 %43, i8* %45, i64 %46)
  store i32 %47, i32* %10, align 4
  br label %55

48:                                               ; preds = %38
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @avio_get_str16le(i32* %49, i32 %50, i8* %52, i64 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %48, %41
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i8**, i8*** %8, align 8
  %60 = call i32 @av_freep(i8** %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %58, %35, %19
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @avio_get_str16be(i32*, i32, i8*, i64) #1

declare dso_local i32 @avio_get_str16le(i32*, i32, i8*, i64) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
