; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_filter_frame_framed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_filter_frame_framed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { {}*, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @ff_filter_frame_framed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_filter_frame_framed(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32 (%struct.TYPE_12__*, i32*)*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %8, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.TYPE_12__*, i32*)**
  %19 = load i32 (%struct.TYPE_12__*, i32*)*, i32 (%struct.TYPE_12__*, i32*)** %18, align 8
  store i32 (%struct.TYPE_12__*, i32*)* %19, i32 (%struct.TYPE_12__*, i32*)** %6, align 8
  %20 = icmp ne i32 (%struct.TYPE_12__*, i32*)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 (%struct.TYPE_12__*, i32*)* @default_filter_frame, i32 (%struct.TYPE_12__*, i32*)** %6, align 8
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = call i32 @ff_inlink_make_frame_writable(%struct.TYPE_12__* %28, i32** %5)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %70

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ff_inlink_process_commands(%struct.TYPE_12__* %35, i32* %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @ff_inlink_evaluate_timeline_at_frame(%struct.TYPE_12__* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %34
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 (%struct.TYPE_12__*, i32*)* @default_filter_frame, i32 (%struct.TYPE_12__*, i32*)** %6, align 8
  br label %60

60:                                               ; preds = %59, %50, %34
  %61 = load i32 (%struct.TYPE_12__*, i32*)*, i32 (%struct.TYPE_12__*, i32*)** %6, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 %61(%struct.TYPE_12__* %62, i32* %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %73

70:                                               ; preds = %32
  %71 = call i32 @av_frame_free(i32** %5)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %60
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @default_filter_frame(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ff_inlink_make_frame_writable(%struct.TYPE_12__*, i32**) #1

declare dso_local i32 @ff_inlink_process_commands(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ff_inlink_evaluate_timeline_at_frame(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @av_frame_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
