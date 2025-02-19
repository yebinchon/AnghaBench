; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_pva.c_pva_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_pva.c_pva_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @pva_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pva_read_packet(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = call i64 @read_part_of_packet(%struct.TYPE_8__* %14, i32* %7, i32* %9, i32* %10, i32 1)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @av_get_packet(i32* %18, %struct.TYPE_7__* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %2
  %24 = load i32, i32* @EIO, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @read_part_of_packet(%struct.TYPE_8__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
