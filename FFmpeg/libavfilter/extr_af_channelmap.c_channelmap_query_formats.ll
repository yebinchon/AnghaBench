; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_channelmap.c_channelmap_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_channelmap.c_channelmap_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__**, %struct.TYPE_13__**, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @channelmap_query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channelmap_query_formats(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  %11 = call %struct.TYPE_17__* (...) @ff_all_channel_counts()
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = icmp ne %struct.TYPE_17__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = call i32 @AVERROR(i32 %15)
  store i32 %16, i32* %7, align 4
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ff_add_channel_layout(%struct.TYPE_17__** %6, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = call i32 (...) @ff_planar_sample_fmts()
  %26 = call i32 @ff_set_common_formats(%struct.TYPE_16__* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = call i32 (...) @ff_all_samplerates()
  %31 = call i32 @ff_set_common_samplerates(%struct.TYPE_16__* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %37, i64 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = call i32 @ff_channel_layouts_ref(%struct.TYPE_17__* %34, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %33
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %47, i64 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = call i32 @ff_channel_layouts_ref(%struct.TYPE_17__* %44, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43, %33, %28, %23, %17
  br label %55

54:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %65

55:                                               ; preds = %53, %14
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = icmp ne %struct.TYPE_17__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = call i32 @av_freep(%struct.TYPE_17__** %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = call i32 @av_freep(%struct.TYPE_17__** %5)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_17__* @ff_all_channel_counts(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_add_channel_layout(%struct.TYPE_17__**, i32) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ff_planar_sample_fmts(...) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ff_all_samplerates(...) #1

declare dso_local i32 @ff_channel_layouts_ref(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @av_freep(%struct.TYPE_17__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
