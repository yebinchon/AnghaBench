; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ipmovie.c_ipmovie_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ipmovie.c_ipmovie_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@CHUNK_BAD = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@CHUNK_EOF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CHUNK_NOMEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHUNK_END = common dso_local global i32 0, align 4
@CHUNK_SHUTDOWN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@CHUNK_VIDEO = common dso_local global i32 0, align 4
@CHUNK_INIT_VIDEO = common dso_local global i32 0, align 4
@CHUNK_INIT_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @ipmovie_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmovie_read_packet(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  br label %14

14:                                               ; preds = %62, %61, %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @process_ipmovie_chunk(i32* %15, i32* %16, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @CHUNK_BAD, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %23, i32* %7, align 4
  br label %67

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @CHUNK_EOF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EIO, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %7, align 4
  br label %66

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @CHUNK_NOMEM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %7, align 4
  br label %65

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @CHUNK_END, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @CHUNK_SHUTDOWN, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %47, i32* %7, align 4
  br label %64

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @CHUNK_VIDEO, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %63

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @CHUNK_INIT_VIDEO, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CHUNK_INIT_AUDIO, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53
  br label %14

62:                                               ; preds = %57
  br label %14

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %64, %35
  br label %66

66:                                               ; preds = %65, %28
  br label %67

67:                                               ; preds = %66, %22
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @process_ipmovie_chunk(i32*, i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
