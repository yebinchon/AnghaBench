; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvdec.c_read_len_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvdec.c_read_len_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error reading huffman table\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @read_len_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_len_table(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %51, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @get_bits(i32* %16, i32 3)
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @get_bits(i32* %18, i32 5)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @get_bits(i32* %23, i32 8)
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @get_bits_left(i32* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %25
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 @av_log(i32* null, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %4, align 4
  br label %53

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %10, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  br label %40

51:                                               ; preds = %40
  br label %11

52:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
