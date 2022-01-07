; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_encode_audio.c_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_encode_audio.c_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error sending the frame to the encoder\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error encoding audio frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_5__*, i32*)* @encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode(i32* %0, i32* %1, %struct.TYPE_5__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @avcodec_send_frame(i32* %10, i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = call i32 @avcodec_receive_packet(i32* %24, %struct.TYPE_5__* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = call i32 @AVERROR(i32 %28)
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @AVERROR_EOF, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %23
  br label %55

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @fwrite(i32 %47, i32 1, i32 %50, i32* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = call i32 @av_packet_unref(%struct.TYPE_5__* %53)
  br label %20

55:                                               ; preds = %35, %20
  ret void
}

declare dso_local i32 @avcodec_send_frame(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @avcodec_receive_packet(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
