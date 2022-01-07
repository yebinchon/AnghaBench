; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_url_open_dyn_buf_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_url_open_dyn_buf_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@dyn_packet_buf_write = common dso_local global i32 0, align 4
@dyn_buf_write = common dso_local global i32 0, align 4
@dyn_buf_seek = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__**, i32)* @url_open_dyn_buf_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @url_open_dyn_buf_internal(%struct.TYPE_9__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 1024, %12 ]
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 8, %16
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %74

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = add i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = call %struct.TYPE_8__* @av_mallocz(i32 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %6, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @dyn_packet_buf_write, align 4
  br label %50

48:                                               ; preds = %33
  %49 = load i32, i32* @dyn_buf_write, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %57

55:                                               ; preds = %50
  %56 = load i32*, i32** @dyn_buf_seek, align 8
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32* [ null, %54 ], [ %56, %55 ]
  %59 = call %struct.TYPE_9__* @avio_alloc_context(i32 %39, i32 %42, i32 1, %struct.TYPE_8__* %43, i32* null, i32 %51, i32* %58)
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %60, align 8
  %61 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = call i32 @av_free(%struct.TYPE_8__* %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %3, align 4
  br label %74

69:                                               ; preds = %57
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %64, %30, %21
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_8__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_9__* @avio_alloc_context(i32, i32, i32, %struct.TYPE_8__*, i32*, i32, i32*) #1

declare dso_local i32 @av_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
