; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_avio_read_to_bprint.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_avio_read_to_bprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_EOF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avio_read_to_bprint(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @FFMIN(i64 %16, i32 1024)
  %18 = call i32 @avio_read(i32* %14, i8* %15, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @AVERROR_EOF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %45

23:                                               ; preds = %13
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @av_bprint_append_data(i32* %29, i8* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @av_bprint_is_complete(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %7, align 8
  br label %10

44:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %36, %26, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @FFMIN(i64, i32) #1

declare dso_local i32 @av_bprint_append_data(i32*, i8*, i32) #1

declare dso_local i32 @av_bprint_is_complete(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
