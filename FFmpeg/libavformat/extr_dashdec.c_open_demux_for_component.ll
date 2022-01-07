; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_open_demux_for_component.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_open_demux_for_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.representation = type { %struct.TYPE_11__*, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.representation*)* @open_demux_for_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_demux_for_component(%struct.TYPE_14__* %0, %struct.representation* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.representation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.representation* %1, %struct.representation** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.representation*, %struct.representation** %5, align 8
  %12 = getelementptr inbounds %struct.representation, %struct.representation* %11, i32 0, i32 3
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %12, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = load %struct.representation*, %struct.representation** %5, align 8
  %15 = call i32 @calc_cur_seg_no(%struct.TYPE_14__* %13, %struct.representation* %14)
  %16 = load %struct.representation*, %struct.representation** %5, align 8
  %17 = getelementptr inbounds %struct.representation, %struct.representation* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.representation*, %struct.representation** %5, align 8
  %19 = getelementptr inbounds %struct.representation, %struct.representation* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.representation*, %struct.representation** %5, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @calc_max_seg_no(%struct.representation* %23, i32 %26)
  %28 = load %struct.representation*, %struct.representation** %5, align 8
  %29 = getelementptr inbounds %struct.representation, %struct.representation* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %22, %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = load %struct.representation*, %struct.representation** %5, align 8
  %33 = call i32 @reopen_demux_for_component(%struct.TYPE_14__* %31, %struct.representation* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %91

37:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %87, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.representation*, %struct.representation** %5, align 8
  %41 = getelementptr inbounds %struct.representation, %struct.representation* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %38
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %47, i32* null)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %8, align 8
  %49 = load %struct.representation*, %struct.representation** %5, align 8
  %50 = getelementptr inbounds %struct.representation, %struct.representation* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %53, i64 %55
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %9, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %46
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %6, align 4
  br label %91

63:                                               ; preds = %46
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @avcodec_parameters_copy(i32 %69, i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %74, i32 %77, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %63
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %38

90:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %93

91:                                               ; preds = %60, %36
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %90
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @calc_cur_seg_no(%struct.TYPE_14__*, %struct.representation*) #1

declare dso_local i64 @calc_max_seg_no(%struct.representation*, i32) #1

declare dso_local i32 @reopen_demux_for_component(%struct.TYPE_14__*, %struct.representation*) #1

declare dso_local %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_parameters_copy(i32, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_13__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
