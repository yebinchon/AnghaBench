; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_av_write_uncoded_frame_internal.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_av_write_uncoded_frame_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i8* }

@ENOSYS = common dso_local global i32 0, align 4
@UNCODED_FRAME_PACKET_SIZE = common dso_local global i32 0, align 4
@AV_PKT_FLAG_UNCODED_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, %struct.TYPE_14__*, i32)* @av_write_uncoded_frame_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av_write_uncoded_frame_internal(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = call i32 @av_assert0(%struct.TYPE_12__* %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %64

25:                                               ; preds = %4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  br label %51

29:                                               ; preds = %25
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %11, align 8
  %30 = call i32 @av_init_packet(%struct.TYPE_13__* %10)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = bitcast %struct.TYPE_14__* %31 to i8*
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 6
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @UNCODED_FRAME_PACKET_SIZE, align 4
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* @AV_PKT_FLAG_UNCODED_FRAME, align 4
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %29, %28
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = call i32 @av_interleaved_write_frame(%struct.TYPE_15__* %55, %struct.TYPE_13__* %56)
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %61 = call i32 @av_write_frame(%struct.TYPE_15__* %59, %struct.TYPE_13__* %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i32 [ %57, %54 ], [ %61, %58 ]
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %22
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @av_assert0(%struct.TYPE_12__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_13__*) #1

declare dso_local i32 @av_interleaved_write_frame(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @av_write_frame(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
