; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcode_aac.c_encode_audio_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcode_aac.c_encode_audio_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@pts = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Could not send packet for encoding (error '%s')\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not encode frame (error '%s')\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not write frame (error '%s')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, i32*)* @encode_audio_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_audio_frame(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32 @init_packet(i32* %10)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i32, i32* @pts, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @pts, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @pts, align 4
  br label %26

26:                                               ; preds = %15, %4
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = call i32 @avcodec_send_frame(i32* %27, %struct.TYPE_4__* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @AVERROR_EOF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %83

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @av_err2str(i32 %39)
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %86

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @avcodec_receive_packet(i32* %45, i32* %10)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = call i32 @AVERROR(i32 %48)
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %83

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @AVERROR_EOF, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %83

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i8* @av_err2str(i32 %62)
  %64 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  br label %83

65:                                               ; preds = %57
  %66 = load i32*, i32** %9, align 8
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @av_write_frame(i32* %74, i32* %10)
  store i32 %75, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @stderr, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i8* @av_err2str(i32 %79)
  %81 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %83

82:                                               ; preds = %73, %69
  br label %83

83:                                               ; preds = %82, %77, %60, %56, %51, %33
  %84 = call i32 @av_packet_unref(i32* %10)
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %37
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @init_packet(i32*) #1

declare dso_local i32 @avcodec_send_frame(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @avcodec_receive_packet(i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_write_frame(i32*, i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
