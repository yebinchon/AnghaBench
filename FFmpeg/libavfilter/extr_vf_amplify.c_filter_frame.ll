; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_amplify.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_amplify.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_23__** }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)* }
%struct.TYPE_20__ = type { %struct.TYPE_22__**, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i64, i64, i32*, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@amplify_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %6, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %16, i64 0
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %7, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %8, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %32, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %33, i64 %36
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %37, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  store i32 0, i32* %3, align 4
  br label %121

42:                                               ; preds = %2
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %45, i64 0
  %47 = call i32 @av_frame_free(%struct.TYPE_22__** %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %50, i64 0
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %54, i64 1
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %58, 1
  %60 = mul i64 8, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memmove(%struct.TYPE_22__** %51, %struct.TYPE_22__** %55, i32 %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %65, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %69, 1
  %71 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %66, i64 %70
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %71, align 8
  br label %72

72:                                               ; preds = %42
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__* %73, i32 %76, i32 %79)
  store %struct.TYPE_22__* %80, %struct.TYPE_22__** %10, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %82 = icmp ne %struct.TYPE_22__* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %72
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %3, align 4
  br label %121

86:                                               ; preds = %72
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %89, i64 0
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %97, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  store %struct.TYPE_22__** %100, %struct.TYPE_22__*** %101, align 8
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)*, i32 (%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32*, i32)** %105, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %108 = load i32, i32* @amplify_frame, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %115 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_24__* %114)
  %116 = call i32 @FFMIN(i32 %113, i32 %115)
  %117 = call i32 %106(%struct.TYPE_24__* %107, i32 %108, %struct.TYPE_20__* %9, i32* null, i32 %116)
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %120 = call i32 @ff_filter_frame(%struct.TYPE_23__* %118, %struct.TYPE_22__* %119)
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %86, %83, %29
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

declare dso_local i32 @memmove(%struct.TYPE_22__**, %struct.TYPE_22__**, i32) #1

declare dso_local %struct.TYPE_22__* @ff_get_video_buffer(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_24__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
