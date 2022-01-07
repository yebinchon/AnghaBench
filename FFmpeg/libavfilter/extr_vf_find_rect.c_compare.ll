; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_find_rect.c_compare.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_find_rect.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32)* @compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @compare(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  store i32 %31, i32* %18, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %19, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %45, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %44, i64 %52
  store i32* %53, i32** %20, align 8
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %119, %4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %122

60:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %99, %60
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = load i32*, i32** %19, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %23, align 4
  %73 = load i32*, i32** %20, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %24, align 4
  %78 = load i32, i32* %23, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %23, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %24, align 4
  %90 = load i32, i32* %24, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* %24, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %16, align 4
  br label %99

99:                                               ; preds = %67
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %61

102:                                              ; preds = %61
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %19, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %19, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %20, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %20, align 8
  br label %119

119:                                              ; preds = %102
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %54

122:                                              ; preds = %54
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %14, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 %126, %127
  %129 = sub nsw i32 %125, %128
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %15, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sub nsw i32 %132, %135
  store i32 %136, i32* %22, align 4
  %137 = load i32, i32* %21, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %122
  %140 = load i32, i32* %22, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139, %122
  store float 1.000000e+00, float* %5, align 4
  br label %161

143:                                              ; preds = %139
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %16, align 4
  %146 = mul nsw i32 %144, %145
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %13, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sub nsw i32 %146, %149
  %151 = load i32, i32* %21, align 4
  %152 = call i32 @sqrt(i32 %151)
  %153 = load i32, i32* %22, align 4
  %154 = call i32 @sqrt(i32 %153)
  %155 = mul nsw i32 %152, %154
  %156 = sdiv i32 %150, %155
  %157 = sitofp i32 %156 to float
  store float %157, float* %17, align 4
  %158 = load float, float* %17, align 4
  %159 = call float @fabs(float %158)
  %160 = fsub float 1.000000e+00, %159
  store float %160, float* %5, align 4
  br label %161

161:                                              ; preds = %143, %142
  %162 = load float, float* %5, align 4
  ret float %162
}

declare dso_local i32 @sqrt(i32) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
