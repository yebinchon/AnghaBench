; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_fifo_muxer.c_fifo_overflow_drop_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_fifo_muxer.c_fifo_overflow_drop_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unexpected write_header failure: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to prepare test packet: %s\0A\00", align 1
@SLEEPTIME_50_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [114 x i8] c"Writing packets to fifo muxer took too much time while testingbuffer overflow with drop_pkts_on_overflow was on.\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Unexpected write_packet error: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Unexpected write_trailer error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32*)* @fifo_overflow_drop_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_overflow_drop_test(i32* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = call i32 @av_init_packet(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = call i32 @avformat_write_header(i32* %15, i32** %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @av_err2str(i32 %22)
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %91

26:                                               ; preds = %3
  %27 = call i32 (...) @av_gettime_relative()
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %50, %26
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 6
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @prepare_packet(i32* %13, i32* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @av_err2str(i32 %39)
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %87

42:                                               ; preds = %31
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @av_write_frame(i32* %43, i32* %13)
  store i32 %44, i32* %8, align 4
  %45 = call i32 @av_packet_unref(i32* %13)
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %28

53:                                               ; preds = %48, %28
  %54 = call i32 (...) @av_gettime_relative()
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @SLEEPTIME_50_MS, align 4
  %60 = mul nsw i32 %59, 6
  %61 = sdiv i32 %60, 2
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %66, i32* %8, align 4
  br label %87

67:                                               ; preds = %53
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* @stderr, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i8* @av_err2str(i32 %72)
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  br label %87

75:                                               ; preds = %67
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @av_write_trailer(i32* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i8* @av_err2str(i32 %82)
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %91

87:                                               ; preds = %70, %63, %37
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @av_write_trailer(i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %87, %85, %20
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @av_init_packet(i32*) #1

declare dso_local i32 @avformat_write_header(i32*, i32**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @av_gettime_relative(...) #1

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
