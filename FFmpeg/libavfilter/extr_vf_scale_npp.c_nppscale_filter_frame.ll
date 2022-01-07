; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale_npp.c_nppscale_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale_npp.c_nppscale_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_23__*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_31__**, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_30__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 (i32*)*, i32 (i32)* }

@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_30__*)* @nppscale_filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nppscale_filter_frame(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %14 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %6, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  store %struct.TYPE_28__* %19, %struct.TYPE_28__** %7, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %22, i64 0
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %23, align 8
  store %struct.TYPE_31__* %24, %struct.TYPE_31__** %8, align 8
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %9, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %11, align 8
  store i32 0, i32* %13, align 4
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %43 = call i32 @ff_filter_frame(%struct.TYPE_31__* %41, %struct.TYPE_30__* %42)
  store i32 %43, i32* %3, align 4
  br label %127

44:                                               ; preds = %2
  %45 = call %struct.TYPE_30__* (...) @av_frame_alloc()
  store %struct.TYPE_30__* %45, %struct.TYPE_30__** %11, align 8
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %47 = icmp ne %struct.TYPE_30__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %13, align 4
  br label %123

51:                                               ; preds = %44
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 1
  %58 = load i32 (i32)*, i32 (i32)** %57, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %58(i32 %61)
  %63 = call i32 @CHECK_CU(i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %123

67:                                               ; preds = %51
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %71 = call i32 @nppscale_scale(%struct.TYPE_21__* %68, %struct.TYPE_30__* %69, %struct.TYPE_30__* %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i32 (i32*)*, i32 (i32*)** %77, align 8
  %79 = call i32 %78(i32* %12)
  %80 = call i32 @CHECK_CU(i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  br label %123

84:                                               ; preds = %67
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 %112, %115
  %117 = load i32, i32* @INT_MAX, align 4
  %118 = call i32 @av_reduce(i64* %87, i64* %90, i32 %103, i32 %116, i32 %117)
  %119 = call i32 @av_frame_free(%struct.TYPE_30__** %5)
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %122 = call i32 @ff_filter_frame(%struct.TYPE_31__* %120, %struct.TYPE_30__* %121)
  store i32 %122, i32* %3, align 4
  br label %127

123:                                              ; preds = %83, %66, %48
  %124 = call i32 @av_frame_free(%struct.TYPE_30__** %5)
  %125 = call i32 @av_frame_free(%struct.TYPE_30__** %11)
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %123, %84, %40
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @ff_filter_frame(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i32 @nppscale_scale(%struct.TYPE_21__*, %struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @av_reduce(i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_30__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
