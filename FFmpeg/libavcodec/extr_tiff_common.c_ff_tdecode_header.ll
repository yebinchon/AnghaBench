; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff_common.c_ff_tdecode_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff_common.c_ff_tdecode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"II\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"MM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_tdecode_header(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @bytestream2_get_bytes_left(i32* %8)
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %12, i32* %4, align 4
  br label %47

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @bytestream2_get_le16u(i32* %14)
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AV_RB16(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32*, i32** %6, align 8
  store i32 1, i32* %22, align 4
  br label %33

23:                                               ; preds = %13
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @AV_RB16(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  store i32 0, i32* %29, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %4, align 4
  br label %47

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ff_tget_short(i32* %34, i32 %36)
  %38 = icmp ne i32 %37, 42
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %33
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ff_tget_long(i32* %42, i32 %44)
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %41, %39, %30, %11
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_le16u(i32*) #1

declare dso_local i32 @AV_RB16(i8*) #1

declare dso_local i32 @ff_tget_short(i32*, i32) #1

declare dso_local i32 @ff_tget_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
