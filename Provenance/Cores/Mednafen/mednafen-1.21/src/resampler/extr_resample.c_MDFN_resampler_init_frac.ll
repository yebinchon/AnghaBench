; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_MDFN_resampler_init_frac.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_MDFN_resampler_init_frac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, float, i32, i32, i32, i32, i32*, i32*, i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@RESAMPLER_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@RESAMPLER_ERR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @speex_resampler_init_frac(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* %14, align 4
  %19 = icmp sgt i32 %18, 10
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %7
  %24 = load i32*, i32** %15, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @RESAMPLER_ERR_INVALID_ARG, align 4
  %28 = load i32*, i32** %15, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %139

30:                                               ; preds = %20
  %31 = call i64 @speex_alloc(i32 136)
  %32 = inttoptr i64 %31 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %17, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 19
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 18
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 17
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 16
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 15
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 14
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 13
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 12
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 11
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 10
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store float 1.000000e+00, float* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  store i32 1, i32* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  store i32 1, i32* %65, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 6
  store i32 160, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = call i64 @speex_alloc(i32 %71)
  %73 = inttoptr i64 %72 to i64*
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 9
  store i64* %73, i64** %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i64 @speex_alloc(i32 %79)
  %81 = inttoptr i64 %80 to i32*
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 7
  store i32* %81, i32** %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i64 @speex_alloc(i32 %87)
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 8
  store i32* %89, i32** %91, align 8
  store i32 0, i32* %16, align 4
  br label %92

92:                                               ; preds = %115, %30
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %92
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 9
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 7
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 0, i32* %108, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 8
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %96
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %92

118:                                              ; preds = %92
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @speex_resampler_set_quality(%struct.TYPE_6__* %119, i32 %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @speex_resampler_set_rate_frac(%struct.TYPE_6__* %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %129 = call i32 @update_filter(%struct.TYPE_6__* %128)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %118
  %135 = load i32, i32* @RESAMPLER_ERR_SUCCESS, align 4
  %136 = load i32*, i32** %15, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %118
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %8, align 8
  br label %139

139:                                              ; preds = %137, %29
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  ret %struct.TYPE_6__* %140
}

declare dso_local i64 @speex_alloc(i32) #1

declare dso_local i32 @speex_resampler_set_quality(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @speex_resampler_set_rate_frac(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @update_filter(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
