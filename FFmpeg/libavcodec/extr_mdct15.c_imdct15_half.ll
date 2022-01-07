; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdct15.c_imdct15_half.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdct15.c_imdct15_half.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32, i32*, i64, i32 (%struct.TYPE_10__*, i64, i32*, i32, i32)*, %struct.TYPE_11__, i32, i32 (i64, %struct.TYPE_10__*, i32, i32)* }
%struct.TYPE_10__ = type { float, float }
%struct.TYPE_11__ = type { i32, i32 (%struct.TYPE_11__*, i32)*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, float*, float*, i32)* @imdct15_half to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct15_half(%struct.TYPE_9__* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [15 x %struct.TYPE_10__], align 16
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load float*, float** %6, align 8
  %20 = bitcast float* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %10, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %13, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 1, %28
  store i32 %29, i32* %14, align 4
  %30 = load float*, float** %7, align 8
  store float* %30, float** %15, align 8
  %31 = load float*, float** %7, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %31, i64 %38
  store float* %39, float** %16, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %117, %4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %120

44:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %92, %44
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 15
  br i1 %47, label %48, label %95

48:                                               ; preds = %45
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 %52, 15
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %17, align 4
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %60 = load float*, float** %16, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sub nsw i32 0, %61
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %60, i64 %65
  %67 = load float, float* %66, align 4
  store float %67, float* %59, align 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %69 = load float*, float** %15, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %69, i64 %73
  %75 = load float, float* %74, align 4
  store float %75, float* %68, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [15 x %struct.TYPE_10__], [15 x %struct.TYPE_10__]* %9, i64 0, i64 %77
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %17, align 4
  %83 = ashr i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = bitcast %struct.TYPE_10__* %78 to <2 x float>*
  %88 = load <2 x float>, <2 x float>* %87, align 8
  %89 = bitcast %struct.TYPE_10__* %18 to <2 x float>*
  %90 = load <2 x float>, <2 x float>* %89, align 4
  %91 = call i32 @CMUL3(<2 x float> %88, <2 x float> %90, i32 %86)
  br label %92

92:                                               ; preds = %48
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %45

95:                                               ; preds = %45
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 9
  %98 = load i32 (i64, %struct.TYPE_10__*, i32, i32)*, i32 (i64, %struct.TYPE_10__*, i32, i32)** %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 7
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %101, %109
  %111 = getelementptr inbounds [15 x %struct.TYPE_10__], [15 x %struct.TYPE_10__]* %9, i64 0, i64 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 %98(i64 %110, %struct.TYPE_10__* %111, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %95
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %40

120:                                              ; preds = %40
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %141, %120
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 15
  br i1 %123, label %124, label %144

124:                                              ; preds = %121
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 1
  %128 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 7
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %133, %137
  %139 = trunc i64 %138 to i32
  %140 = call i32 %128(%struct.TYPE_11__* %130, i32 %139)
  br label %141

141:                                              ; preds = %124
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %121

144:                                              ; preds = %121
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 6
  %147 = load i32 (%struct.TYPE_10__*, i64, i32*, i32, i32)*, i32 (%struct.TYPE_10__*, i64, i32*, i32, i32)** %146, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i32 %147(%struct.TYPE_10__* %148, i64 %151, i32* %154, i32 %157, i32 %158)
  ret void
}

declare dso_local i32 @CMUL3(<2 x float>, <2 x float>, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
