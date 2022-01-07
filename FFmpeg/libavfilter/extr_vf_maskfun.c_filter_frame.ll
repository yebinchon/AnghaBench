; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskfun.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskfun.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, %struct.TYPE_20__**, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_21__*, i32, %struct.TYPE_19__*, i32*, i32)* }
%struct.TYPE_18__ = type { i32*, i32, i32, i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %6, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %7, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %18, i64 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %8, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 3
  %23 = load i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)*, i64 (%struct.TYPE_21__*, %struct.TYPE_19__*)** %22, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = call i64 %23(%struct.TYPE_21__* %24, %struct.TYPE_19__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %2
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_19__* @av_frame_clone(i32 %31)
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %9, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %34 = icmp ne %struct.TYPE_19__* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = call i32 @av_frame_free(%struct.TYPE_19__** %5)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %72

39:                                               ; preds = %28
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = call i32 @av_frame_free(%struct.TYPE_19__** %5)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %48 = call i32 @ff_filter_frame(%struct.TYPE_20__* %46, %struct.TYPE_19__* %47)
  store i32 %48, i32* %3, align 4
  br label %72

49:                                               ; preds = %2
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_21__*, i32, %struct.TYPE_19__*, i32*, i32)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_19__*, i32*, i32)** %53, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_21__* %65)
  %67 = call i32 @FFMIN(i32 %64, i32 %66)
  %68 = call i32 %54(%struct.TYPE_21__* %55, i32 %58, %struct.TYPE_19__* %59, i32* null, i32 %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = call i32 @ff_filter_frame(%struct.TYPE_20__* %69, %struct.TYPE_19__* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %49, %39, %35
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_19__* @av_frame_clone(i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_19__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
