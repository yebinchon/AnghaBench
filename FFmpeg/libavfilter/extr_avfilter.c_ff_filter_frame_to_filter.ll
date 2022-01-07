; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_filter_frame_to_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_filter_frame_to_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, i32, i32* }

@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ff_filter_frame_to_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_filter_frame_to_filter(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  %12 = call i32 @ff_framequeue_queued_frames(i32* %11)
  %13 = call i32 @av_assert1(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ff_inlink_consume_samples(%struct.TYPE_7__* %19, i64 %22, i32 %25, i32** %4)
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = call i32 @ff_inlink_consume_frame(%struct.TYPE_7__* %28, i32** %4)
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi i32 [ %26, %18 ], [ %29, %27 ]
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @av_assert1(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32*, i32** %4, align 8
  %38 = icmp ne i32* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @av_assert1(i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %71

43:                                               ; preds = %30
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @filter_unblock(i32* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @ff_filter_frame_framed(%struct.TYPE_7__* %50, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %65 = call i32 @ff_avfilter_link_set_out_status(%struct.TYPE_7__* %62, i32 %63, i32 %64)
  br label %69

66:                                               ; preds = %55, %43
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @ff_filter_set_ready(i32* %67, i32 300)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %36
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @ff_framequeue_queued_frames(i32*) #1

declare dso_local i32 @ff_inlink_consume_samples(%struct.TYPE_7__*, i64, i32, i32**) #1

declare dso_local i32 @ff_inlink_consume_frame(%struct.TYPE_7__*, i32**) #1

declare dso_local i32 @filter_unblock(i32*) #1

declare dso_local i32 @ff_filter_frame_framed(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ff_avfilter_link_set_out_status(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ff_filter_set_ready(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
