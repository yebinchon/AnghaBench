; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__**, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@AV_SAMPLE_FMT_FLT = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_NONE = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV444P = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB24 = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO_DOWNMIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [5 x i32], align 16
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %14, i64 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %23 = load i32, i32* @AV_SAMPLE_FMT_FLT, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  %25 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %27 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @AV_PIX_FMT_YUV422P, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @AV_PIX_FMT_YUV444P, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @AV_PIX_FMT_RGB24, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %37 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @AV_CH_LAYOUT_STEREO_DOWNMIX, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 -1, i32* %40, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %42 = call i32* @ff_make_format_list(i32* %41)
  store i32* %42, i32** %4, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = call i32 @ff_formats_ref(i32* %43, i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %2, align 4
  br label %80

50:                                               ; preds = %1
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %52 = call i32* @avfilter_make_format64_list(i32* %51)
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = call i32 @ff_channel_layouts_ref(i32* %53, i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %2, align 4
  br label %80

60:                                               ; preds = %50
  %61 = call i32* (...) @ff_all_samplerates()
  store i32* %61, i32** %4, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = call i32 @ff_formats_ref(i32* %62, i32* %64)
  store i32 %65, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %2, align 4
  br label %80

69:                                               ; preds = %60
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %71 = call i32* @ff_make_format_list(i32* %70)
  store i32* %71, i32** %4, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @ff_formats_ref(i32* %72, i32* %74)
  store i32 %75, i32* %11, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %2, align 4
  br label %80

79:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %77, %67, %58, %48
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

declare dso_local i32* @avfilter_make_format64_list(i32*) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

declare dso_local i32* @ff_all_samplerates(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
