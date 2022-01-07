; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_subtitles.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_subtitles.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_14__** }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Change happened at time ms:%f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %16, i64 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %6, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @av_q2d(i32 %27)
  %29 = mul nsw i32 %24, %28
  %30 = mul nsw i32 %29, 1000
  %31 = sitofp i32 %30 to double
  store double %31, double* %9, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load double, double* %9, align 8
  %39 = call i32* @ass_render_frame(i32 %34, i32 %37, double %38, i32* %8)
  store i32* %39, i32** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = load i32, i32* @AV_LOG_DEBUG, align 4
  %45 = load double, double* %9, align 8
  %46 = call i32 @av_log(%struct.TYPE_15__* %43, i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), double %45)
  br label %47

47:                                               ; preds = %42, %2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @overlay_ass_image(%struct.TYPE_12__* %48, %struct.TYPE_13__* %49, i32* %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = call i32 @ff_filter_frame(%struct.TYPE_14__* %52, %struct.TYPE_13__* %53)
  ret i32 %54
}

declare dso_local i32 @av_q2d(i32) #1

declare dso_local i32* @ass_render_frame(i32, i32, double, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, double) #1

declare dso_local i32 @overlay_ass_image(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
