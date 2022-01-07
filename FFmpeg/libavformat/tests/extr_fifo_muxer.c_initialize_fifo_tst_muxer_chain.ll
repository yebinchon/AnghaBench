; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_fifo_muxer.c_initialize_fifo_tst_muxer_chain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_fifo_muxer.c_initialize_fifo_tst_muxer_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to create format context: %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to create stream: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**)* @initialize_fifo_tst_muxer_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_fifo_tst_muxer_chain(i32** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32**, i32*** %3, align 8
  %7 = call i32 @avformat_alloc_output_context2(i32** %6, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @av_err2str(i32 %12)
  %14 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %1
  %17 = load i32**, i32*** %3, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32* @avformat_new_stream(i32* %18, i32* null)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i8* @av_err2str(i32 %24)
  %26 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @avformat_alloc_output_context2(i32**, i32*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32* @avformat_new_stream(i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
