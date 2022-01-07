; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_spx_coordinates.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dec.c_spx_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32*, float, i32**, i32**, i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @spx_coordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spx_coordinates(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 9
  store i32* %18, i32** %3, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %22

22:                                               ; preds = %169, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %172

26:                                               ; preds = %22
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 8
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %161

35:                                               ; preds = %26
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @get_bits1(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %160

48:                                               ; preds = %44, %35
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @get_bits(i32* %55, i32 5)
  %57 = call i32 @AC3_SPX_BLEND(i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @get_bits(i32* %58, i32 2)
  %60 = mul nsw i32 %59, 3
  store i32 %60, i32* %9, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %156, %48
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %159

70:                                               ; preds = %64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = ashr i32 %79, 1
  %81 = add nsw i32 %78, %80
  %82 = sitofp i32 %81 to float
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  %85 = load float, float* %84, align 8
  %86 = fdiv float %82, %85
  %87 = load i32, i32* %7, align 4
  %88 = sitofp i32 %87 to float
  %89 = fsub float %86, %88
  %90 = fptosi float %89 to i32
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @av_clipf(i32 %91, float 0.000000e+00, float 1.000000e+00)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sitofp i32 %93 to float
  %95 = fmul float 3.000000e+00, %94
  %96 = call i32 @sqrtf(float %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %13, align 4
  %98 = sitofp i32 %97 to float
  %99 = fsub float 1.000000e+00, %98
  %100 = call i32 @sqrtf(float %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @get_bits(i32* %104, i32 4)
  store i32 %105, i32* %11, align 4
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @get_bits(i32* %106, i32 2)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %108, 15
  br i1 %109, label %110, label %113

110:                                              ; preds = %70
  %111 = load i32, i32* %12, align 4
  %112 = shl i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %116

113:                                              ; preds = %70
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 25, %117
  %119 = load i32, i32* %9, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* %12, align 4
  %122 = shl i32 %121, %120
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = sitofp i32 %123 to float
  %125 = fmul float %124, 0x3E80000000000000
  store float %125, float* %16, align 4
  %126 = load i32, i32* %15, align 4
  %127 = sitofp i32 %126 to float
  %128 = load float, float* %16, align 4
  %129 = fmul float %127, %128
  %130 = fptosi float %129 to i32
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 6
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %130, i32* %140, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sitofp i32 %141 to float
  %143 = load float, float* %16, align 4
  %144 = fmul float %142, %143
  %145 = fptosi float %144 to i32
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 7
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %145, i32* %155, align 4
  br label %156

156:                                              ; preds = %116
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %64

159:                                              ; preds = %64
  br label %160

160:                                              ; preds = %159, %44
  br label %168

161:                                              ; preds = %26
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %161, %160
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %22

172:                                              ; preds = %22
  ret void
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @AC3_SPX_BLEND(i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_clipf(i32, float, float) #1

declare dso_local i32 @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
