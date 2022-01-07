; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs.c_ff_cbs_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs.c_ff_cbs_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32)* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_cbs_read_packet(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @av_buffer_ref(i64 %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %4, align 4
  br label %70

27:                                               ; preds = %13
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %53

38:                                               ; preds = %3
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @cbs_fill_fragment_data(%struct.TYPE_16__* %39, %struct.TYPE_15__* %40, i32 %43, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %70

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32)** %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = call i32 %58(%struct.TYPE_16__* %59, %struct.TYPE_15__* %60, i32 0)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %70

66:                                               ; preds = %53
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = call i32 @cbs_read_fragment_content(%struct.TYPE_16__* %67, %struct.TYPE_15__* %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %64, %50, %24
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @av_buffer_ref(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @cbs_fill_fragment_data(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @cbs_read_fragment_content(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
