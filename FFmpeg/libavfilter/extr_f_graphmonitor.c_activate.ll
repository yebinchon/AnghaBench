; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_graphmonitor.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_graphmonitor.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__**, %struct.TYPE_20__**, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %4, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %15, i64 0
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %5, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %20, i64 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %6, align 8
  %23 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_20__* %24, %struct.TYPE_20__* %25)
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = call i64 @ff_inlink_queued_frames(%struct.TYPE_20__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = call i32 @ff_inlink_consume_frame(%struct.TYPE_20__* %31, %struct.TYPE_19__** %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %2, align 4
  br label %81

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = call i32 @av_frame_free(%struct.TYPE_19__** %8)
  br label %45

45:                                               ; preds = %40, %37
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @av_rescale_q(i64 %51, i32 %54, i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %50
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_20__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @create_frame(%struct.TYPE_21__* %69, i64 %70)
  store i32 %71, i32* %2, align 4
  br label %81

72:                                               ; preds = %64, %50
  br label %73

73:                                               ; preds = %72, %46
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %76 = call i32 @FF_FILTER_FORWARD_STATUS(%struct.TYPE_20__* %74, %struct.TYPE_20__* %75)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %79 = call i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_20__* %77, %struct.TYPE_20__* %78)
  %80 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %73, %68, %35
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @ff_inlink_queued_frames(%struct.TYPE_20__*) #1

declare dso_local i32 @ff_inlink_consume_frame(%struct.TYPE_20__*, %struct.TYPE_19__**) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_19__**) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i64 @ff_outlink_frame_wanted(%struct.TYPE_20__*) #1

declare dso_local i32 @create_frame(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @FF_FILTER_FORWARD_STATUS(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
