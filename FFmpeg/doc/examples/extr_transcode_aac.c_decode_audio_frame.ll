; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcode_aac.c_decode_audio_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcode_aac.c_decode_audio_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_EOF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not read frame (error '%s')\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Could not send packet for decoding (error '%s')\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Could not decode frame (error '%s')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @decode_audio_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_audio_frame(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = call i32 @init_packet(i32* %12)
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @av_read_frame(i32* %15, i32* %12)
  store i32 %16, i32* %13, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @AVERROR_EOF, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32*, i32** %11, align 8
  store i32 1, i32* %23, align 4
  br label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i8* @av_err2str(i32 %26)
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %69

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %5
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @avcodec_send_packet(i32* %32, i32* %12)
  store i32 %33, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i8* @av_err2str(i32 %37)
  %39 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %69

41:                                               ; preds = %31
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @avcodec_receive_frame(i32* %42, i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = call i32 @AVERROR(i32 %46)
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  br label %66

50:                                               ; preds = %41
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @AVERROR_EOF, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32*, i32** %11, align 8
  store i32 1, i32* %55, align 4
  store i32 0, i32* %13, align 4
  br label %66

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i8* @av_err2str(i32 %61)
  %63 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  br label %66

64:                                               ; preds = %56
  %65 = load i32*, i32** %10, align 8
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %59, %54, %49
  %67 = call i32 @av_packet_unref(i32* %12)
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %35, %24
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @init_packet(i32*) #1

declare dso_local i32 @av_read_frame(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @avcodec_send_packet(i32*, i32*) #1

declare dso_local i32 @avcodec_receive_frame(i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
