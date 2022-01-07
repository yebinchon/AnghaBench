; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_fifo_muxer.c_fifo_basic_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_fifo_muxer.c_fifo_basic_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unexpected write_header failure: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to prepare test packet: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unexpected write_frame error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Unexpected write_frame error during flushing: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Unexpected write_trailer error during flushing: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32*)* @fifo_basic_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_basic_test(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 @av_init_packet(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = call i32 @avformat_write_header(i32* %12, i32** %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @av_err2str(i32 %19)
  %21 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %77

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 15
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @prepare_packet(i32* %10, i32* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @av_err2str(i32 %34)
  %36 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %74

37:                                               ; preds = %26
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @av_write_frame(i32* %38, i32* %10)
  store i32 %39, i32* %8, align 4
  %40 = call i32 @av_packet_unref(i32* %10)
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i8* @av_err2str(i32 %45)
  %47 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %74

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @av_write_frame(i32* %53, i32* null)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i8* @av_err2str(i32 %59)
  %61 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %74

62:                                               ; preds = %52
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @av_write_trailer(i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @av_err2str(i32 %69)
  %71 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  br label %77

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %79

74:                                               ; preds = %57, %43, %32
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @av_write_trailer(i32* %75)
  br label %77

77:                                               ; preds = %74, %67, %17
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @av_init_packet(i32*) #1

declare dso_local i32 @avformat_write_header(i32*, i32**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @prepare_packet(i32*, i32*, i32) #1

declare dso_local i32 @av_write_frame(i32*, i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @av_write_trailer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
