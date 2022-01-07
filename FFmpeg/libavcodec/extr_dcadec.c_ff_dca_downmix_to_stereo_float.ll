; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadec.c_ff_dca_downmix_to_stereo_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadec.c_ff_dca_downmix_to_stereo_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)* }

@DCA_SPEAKER_MASK_C = common dso_local global i32 0, align 4
@DCA_SPEAKER_L = common dso_local global i64 0, align 8
@DCA_SPEAKER_R = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_dca_downmix_to_stereo_float(%struct.TYPE_3__* %0, float** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store float** %1, float*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @av_log2(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @av_popcount(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32* %22, i32** %14, align 8
  store float 0x3F00000000000000, float* %15, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @DCA_HAS_STEREO(i32 %23)
  %25 = call i32 @av_assert0(i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @DCA_SPEAKER_MASK_C, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %30, align 8
  %32 = load float**, float*** %7, align 8
  %33 = load i64, i64* @DCA_SPEAKER_L, align 8
  %34 = getelementptr inbounds float*, float** %32, i64 %33
  %35 = load float*, float** %34, align 8
  %36 = load float**, float*** %7, align 8
  %37 = load i64, i64* @DCA_SPEAKER_L, align 8
  %38 = getelementptr inbounds float*, float** %36, i64 %37
  %39 = load float*, float** %38, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sitofp i32 %44 to float
  %46 = fmul float %45, 0x3F00000000000000
  %47 = fptosi float %46 to i32
  %48 = load i32, i32* %9, align 4
  %49 = call i32 %31(float* %35, float* %39, i32 %47, i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %51, align 8
  %53 = load float**, float*** %7, align 8
  %54 = load i64, i64* @DCA_SPEAKER_R, align 8
  %55 = getelementptr inbounds float*, float** %53, i64 %54
  %56 = load float*, float** %55, align 8
  %57 = load float**, float*** %7, align 8
  %58 = load i64, i64* @DCA_SPEAKER_R, align 8
  %59 = getelementptr inbounds float*, float** %57, i64 %58
  %60 = load float*, float** %59, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to float
  %68 = fmul float %67, 0x3F00000000000000
  %69 = fptosi float %68 to i32
  %70 = load i32, i32* %9, align 4
  %71 = call i32 %52(float* %56, float* %60, i32 %69, i32 %70)
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %146, %5
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %149

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = shl i32 1, %78
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %146

83:                                               ; preds = %76
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @DCA_SPEAKER_L, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %87
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %94, align 8
  %96 = load float**, float*** %7, align 8
  %97 = load i64, i64* @DCA_SPEAKER_L, align 8
  %98 = getelementptr inbounds float*, float** %96, i64 %97
  %99 = load float*, float** %98, align 8
  %100 = load float**, float*** %7, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float*, float** %100, i64 %102
  %104 = load float*, float** %103, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = sitofp i32 %106 to float
  %108 = fmul float %107, 0x3F00000000000000
  %109 = fptosi float %108 to i32
  %110 = load i32, i32* %9, align 4
  %111 = call i32 %95(float* %99, float* %104, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %92, %87, %83
  %113 = load i32*, i32** %14, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %112
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* @DCA_SPEAKER_R, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %116
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32 (float*, float*, i32, i32)*, i32 (float*, float*, i32, i32)** %123, align 8
  %125 = load float**, float*** %7, align 8
  %126 = load i64, i64* @DCA_SPEAKER_R, align 8
  %127 = getelementptr inbounds float*, float** %125, i64 %126
  %128 = load float*, float** %127, align 8
  %129 = load float**, float*** %7, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float*, float** %129, i64 %131
  %133 = load float*, float** %132, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %134, align 4
  %136 = sitofp i32 %135 to float
  %137 = fmul float %136, 0x3F00000000000000
  %138 = fptosi float %137 to i32
  %139 = load i32, i32* %9, align 4
  %140 = call i32 %124(float* %128, float* %133, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %121, %116, %112
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %8, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %14, align 8
  br label %146

146:                                              ; preds = %141, %82
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %72

149:                                              ; preds = %72
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
