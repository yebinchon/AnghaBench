; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac9dec.c_parse_gradient.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac9dec.c_parse_gradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float** }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*, i32*)* @parse_gradient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_gradient(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @get_bits(i32* %17, i32 2)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @get_bits(i32* %26, i32 5)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 31, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @get_bits(i32* %30, i32 5)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 31, i32* %33, align 4
  br label %48

34:                                               ; preds = %3
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @get_bits(i32* %35, i32 6)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @get_bits(i32* %38, i32 6)
  %40 = add nsw i32 %39, 1
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @get_bits(i32* %42, i32 5)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @get_bits(i32* %45, i32 5)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %34, %25
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @get_bits(i32* %49, i32 4)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %54, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 31
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %48
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %4, align 4
  br label %164

64:                                               ; preds = %58
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %4, align 4
  br label %164

74:                                               ; preds = %64
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %76, %78
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = mul nsw i32 2, %82
  %84 = sub nsw i32 1, %83
  store i32 %84, i32* %11, align 4
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @FFABS(i32 %89)
  %91 = sub nsw i32 %90, 1
  %92 = sitofp i32 %91 to float
  %93 = fdiv float %92, 3.100000e+01
  store float %93, float* %14, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load float**, float*** %95, align 8
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %98, %100
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float*, float** %96, i64 %103
  %105 = load float*, float** %104, align 8
  store float* %105, float** %13, align 8
  store i32 0, i32* %15, align 4
  br label %106

106:                                              ; preds = %127, %74
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp sle i32 %107, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %106
  %113 = load i32, i32* %15, align 4
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %113, %115
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %120, i32* %126, align 4
  br label %127

127:                                              ; preds = %112
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %106

130:                                              ; preds = %106
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %160, %130
  %134 = load i32, i32* %16, align 4
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %163

138:                                              ; preds = %133
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load float, float* %14, align 4
  %142 = load float*, float** %13, align 8
  %143 = load i32, i32* %16, align 4
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %143, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %142, i64 %147
  %149 = load float, float* %148, align 4
  %150 = fmul float %141, %149
  %151 = fptosi float %150 to i32
  %152 = mul nsw i32 %140, %151
  %153 = add nsw i32 %139, %152
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  br label %160

160:                                              ; preds = %138
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %133

163:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %72, %62
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
