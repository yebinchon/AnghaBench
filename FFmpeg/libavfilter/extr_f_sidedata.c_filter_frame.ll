; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sidedata.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sidedata.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__*, %struct.TYPE_16__** }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__**, i32 }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %15, i64 0
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %7, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %8, align 8
  store i32* null, i32** %9, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @av_frame_get_side_data(%struct.TYPE_15__* %26, i32 %29)
  store i32* %30, i32** %9, align 8
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %79 [
    i32 128, label %35
    i32 129, label %43
  ]

35:                                               ; preds = %31
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = call i32 @ff_filter_frame(%struct.TYPE_16__* %39, %struct.TYPE_15__* %40)
  store i32 %41, i32* %3, align 4
  br label %83

42:                                               ; preds = %35
  br label %81

43:                                               ; preds = %31
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %54, %48
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %58, i64 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @av_frame_remove_side_data(%struct.TYPE_15__* %55, i32 %62)
  br label %49

64:                                               ; preds = %49
  br label %75

65:                                               ; preds = %43
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @av_frame_remove_side_data(%struct.TYPE_15__* %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %65
  br label %75

75:                                               ; preds = %74, %64
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = call i32 @ff_filter_frame(%struct.TYPE_16__* %76, %struct.TYPE_15__* %77)
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %31
  %80 = call i32 @av_assert0(i32 0)
  br label %81

81:                                               ; preds = %79, %42
  %82 = call i32 @av_frame_free(%struct.TYPE_15__** %5)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %75, %38
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32* @av_frame_get_side_data(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @av_frame_remove_side_data(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_15__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
