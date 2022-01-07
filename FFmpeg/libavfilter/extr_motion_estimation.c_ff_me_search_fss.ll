; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_motion_estimation.c_ff_me_search_fss.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_motion_estimation.c_ff_me_search_fss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32, i32, i32)*, i32, i64, i32, i32, i32 }

@sqr1 = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_me_search_fss(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = call i32 @FFMAX(i32 %22, i64 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = call i32 @FFMAX(i32 %32, i64 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @FFMIN(i64 %45, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @FFMIN(i64 %55, i32 %58)
  store i32 %59, i32* %15, align 4
  store i32 2, i32* %18, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_4__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32, i32)** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 %68(%struct.TYPE_4__* %69, i32 %70, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %4
  %77 = load i32, i32* %17, align 4
  store i32 %77, i32* %5, align 4
  br label %137

78:                                               ; preds = %4
  br label %79

79:                                               ; preds = %132, %78
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  store i32 0, i32* %19, align 4
  br label %86

86:                                               ; preds = %113, %79
  %87 = load i32, i32* %19, align 4
  %88 = icmp slt i32 %87, 8
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = load i32**, i32*** @sqr1, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %18, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %90, %99
  %101 = load i32, i32* %11, align 4
  %102 = load i32**, i32*** @sqr1, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %18, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %101, %110
  %112 = call i32 @COST_P_MV(i32 %100, i32 %111)
  br label %113

113:                                              ; preds = %89
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %19, align 4
  br label %86

116:                                              ; preds = %86
  %117 = load i32, i32* %10, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i32, i32* %11, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* %18, align 4
  %130 = ashr i32 %129, 1
  store i32 %130, i32* %18, align 4
  br label %131

131:                                              ; preds = %128, %122, %116
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %18, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %79, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %135, %76
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i32 @FFMIN(i64, i32) #1

declare dso_local i32 @COST_P_MV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
