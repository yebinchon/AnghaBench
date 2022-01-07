; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadec.c_ff_dca_downmix_to_stereo_fixed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadec.c_ff_dca_downmix_to_stereo_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32, i32)* }

@DCA_SPEAKER_MASK_C = common dso_local global i32 0, align 4
@DCA_SPEAKER_L = common dso_local global i64 0, align 8
@DCA_SPEAKER_R = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_dca_downmix_to_stereo_fixed(%struct.TYPE_3__* %0, i32** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @av_log2(i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @av_popcount(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32* %21, i32** %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @DCA_HAS_STEREO(i32 %22)
  %24 = call i32 @av_assert0(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @DCA_SPEAKER_MASK_C, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %29, align 8
  %31 = load i32**, i32*** %7, align 8
  %32 = load i64, i64* @DCA_SPEAKER_L, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 %30(i32* %34, i32 %39, i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %43, align 8
  %45 = load i32**, i32*** %7, align 8
  %46 = load i64, i64* @DCA_SPEAKER_R, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 %44(i32* %48, i32 %54, i32 %55)
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %125, %5
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %128

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %12, align 4
  %64 = shl i32 1, %63
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  br label %125

68:                                               ; preds = %61
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %68
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @DCA_SPEAKER_L, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %79, align 8
  %81 = load i32**, i32*** %7, align 8
  %82 = load i64, i64* @DCA_SPEAKER_L, align 8
  %83 = getelementptr inbounds i32*, i32** %81, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32**, i32*** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 %80(i32* %84, i32* %89, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %77, %72, %68
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @DCA_SPEAKER_R, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %105, align 8
  %107 = load i32**, i32*** %7, align 8
  %108 = load i64, i64* @DCA_SPEAKER_R, align 8
  %109 = getelementptr inbounds i32*, i32** %107, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32**, i32*** %7, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 %106(i32* %110, i32* %115, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %103, %98, %94
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %8, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %14, align 8
  br label %125

125:                                              ; preds = %120, %67
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %57

128:                                              ; preds = %57
  ret void
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @av_popcount(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @DCA_HAS_STEREO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
