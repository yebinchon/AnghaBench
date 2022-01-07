; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_lv2.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_lv2.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.TYPE_17__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %6, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = call i64 @av_frame_is_writable(%struct.TYPE_17__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23, %2
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %8, align 8
  br label %53

33:                                               ; preds = %23, %19
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_17__* @ff_get_audio_buffer(i32 %38, i32 %41)
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %8, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %78

49:                                               ; preds = %33
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %50, %struct.TYPE_17__* %51)
  br label %53

53:                                               ; preds = %49, %31
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %57 = call i32 @connect_ports(%struct.TYPE_16__* %54, %struct.TYPE_17__* %55, %struct.TYPE_17__* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @lilv_instance_run(i32 %60, i32 %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = icmp ne %struct.TYPE_17__* %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  br label %70

70:                                               ; preds = %68, %53
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %77 = call i32 @ff_filter_frame(i32 %75, %struct.TYPE_17__* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %70, %45
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @ff_get_audio_buffer(i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @connect_ports(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @lilv_instance_run(i32, i32) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
