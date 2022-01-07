; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vpcc.c_ff_isom_get_vpcc_features.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vpcc.c_ff_isom_get_vpcc_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@FF_LEVEL_UNKNOWN = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FF_PROFILE_UNKNOWN = common dso_local global i32 0, align 4
@VPX_SUBSAMPLING_420_VERTICAL = common dso_local global i32 0, align 4
@VPX_SUBSAMPLING_420_COLLOCATED_WITH_LUMA = common dso_local global i32 0, align 4
@FF_PROFILE_VP9_0 = common dso_local global i32 0, align 4
@FF_PROFILE_VP9_2 = common dso_local global i32 0, align 4
@FF_PROFILE_VP9_1 = common dso_local global i32 0, align 4
@FF_PROFILE_VP9_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_isom_get_vpcc_features(i32* %0, %struct.TYPE_7__* %1, i32* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FF_LEVEL_UNKNOWN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @get_vp9_level(%struct.TYPE_7__* %24, i32* %25)
  br label %31

27:                                               ; preds = %4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_bit_depth(i32* %33, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @get_vpx_chroma_subsampling(i32* %38, i32 %41, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @get_vpx_video_full_range_flag(i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52, %31
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %5, align 4
  br label %104

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @FF_PROFILE_UNKNOWN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @VPX_SUBSAMPLING_420_VERTICAL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @VPX_SUBSAMPLING_420_COLLOCATED_WITH_LUMA, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @FF_PROFILE_VP9_0, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @FF_PROFILE_VP9_2, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %10, align 4
  br label %87

78:                                               ; preds = %65
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 8
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @FF_PROFILE_VP9_1, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @FF_PROFILE_VP9_3, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %76
  br label %88

88:                                               ; preds = %87, %57
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %88, %55
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @get_vp9_level(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @get_bit_depth(i32*, i32) #1

declare dso_local i32 @get_vpx_chroma_subsampling(i32*, i32, i32) #1

declare dso_local i32 @get_vpx_video_full_range_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
