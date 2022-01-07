; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hflip.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hflip.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_20__*, %struct.TYPE_23__** }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_24__*, i32, %struct.TYPE_21__*, i32*, i32)* }
%struct.TYPE_21__ = type { %struct.TYPE_22__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_19__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@filter_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %6, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %15, i64 0
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  store %struct.TYPE_23__* %17, %struct.TYPE_23__** %7, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__* %18, i32 %21, i32 %24)
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %9, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %27 = icmp ne %struct.TYPE_22__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %81

32:                                               ; preds = %2
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = call i32 @av_frame_copy_props(%struct.TYPE_22__* %33, %struct.TYPE_22__* %34)
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_19__* @av_pix_fmt_desc_get(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %32
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AVPALETTE_SIZE, align 4
  %57 = call i32 @memcpy(i32 %50, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %45, %32
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %60, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store %struct.TYPE_22__* %61, %struct.TYPE_22__** %62, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_24__*, i32, %struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_24__*, i32, %struct.TYPE_21__*, i32*, i32)** %66, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = load i32, i32* @filter_slice, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %74 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_24__* %73)
  %75 = call i32 @FFMIN(i32 %72, i32 %74)
  %76 = call i32 %67(%struct.TYPE_24__* %68, i32 %69, %struct.TYPE_21__* %8, i32* null, i32 %75)
  %77 = call i32 @av_frame_free(%struct.TYPE_22__** %5)
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %80 = call i32 @ff_filter_frame(%struct.TYPE_23__* %78, %struct.TYPE_22__* %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %58, %28
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_19__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_24__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
