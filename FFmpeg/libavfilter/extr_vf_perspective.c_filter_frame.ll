; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_perspective.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_perspective.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_25__** }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)* }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_24__ = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@EVAL_MODE_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_22__, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %6, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %20, i64 0
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  store %struct.TYPE_25__* %22, %struct.TYPE_25__** %7, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %8, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__* %26, i32 %29, i32 %32)
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %9, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %35 = icmp ne %struct.TYPE_24__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %2
  %37 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %165

40:                                               ; preds = %2
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %43 = call i32 @av_frame_copy_props(%struct.TYPE_24__* %41, %struct.TYPE_24__* %42)
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EVAL_MODE_FRAME, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %52 = call i32 @calc_persp_luts(%struct.TYPE_26__* %50, %struct.TYPE_25__* %51)
  store i32 %52, i32* %11, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = call i32 @av_frame_free(%struct.TYPE_24__** %9)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %3, align 4
  br label %165

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %40
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %157, %58
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %160

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %65
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  br label %76

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %74, %71 ], [ 0, %75 ]
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %76
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  br label %88

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i32 [ %86, %83 ], [ 0, %87 ]
  store i32 %89, i32* %13, align 4
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %94, align 4
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 3
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %102, align 4
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %110, align 4
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 5
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %118, align 4
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 6
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %126, align 4
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 7
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %134, align 4
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)*, i32 (%struct.TYPE_26__*, i32, %struct.TYPE_22__*, i32*, i32)** %145, align 8
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %154 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_26__* %153)
  %155 = call i32 @FFMIN(i32 %152, i32 %154)
  %156 = call i32 %146(%struct.TYPE_26__* %147, i32 %150, %struct.TYPE_22__* %14, i32* null, i32 %155)
  br label %157

157:                                              ; preds = %88
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %59

160:                                              ; preds = %59
  %161 = call i32 @av_frame_free(%struct.TYPE_24__** %5)
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %164 = call i32 @ff_filter_frame(%struct.TYPE_25__* %162, %struct.TYPE_24__* %163)
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %160, %54, %36
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @calc_persp_luts(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_26__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
