; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_motion_estimation.c_ff_me_search_hexbs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_motion_estimation.c_ff_me_search_hexbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32, i32, i32)*, i32, i64, i32, i32, i32 }

@hex2 = common dso_local global i64** null, align 8
@dia1 = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_me_search_hexbs(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
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
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = call i32 @FFMAX(i32 %21, i64 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = call i32 @FFMAX(i32 %31, i64 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @FFMIN(i64 %44, i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @FFMIN(i64 %54, i32 %57)
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_4__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32, i32)** %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 %61(%struct.TYPE_4__* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %4
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %5, align 4
  br label %153

71:                                               ; preds = %4
  br label %72

72:                                               ; preds = %120, %71
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %10, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  store i32 0, i32* %18, align 4
  br label %79

79:                                               ; preds = %104, %72
  %80 = load i32, i32* %18, align 4
  %81 = icmp slt i32 %80, 6
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64**, i64*** @hex2, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64*, i64** %85, i64 %87
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %84, %91
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64**, i64*** @hex2, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64*, i64** %95, i64 %97
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %94, %101
  %103 = call i32 @COST_P_MV(i64 %92, i64 %102)
  br label %104

104:                                              ; preds = %82
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %18, align 4
  br label %79

107:                                              ; preds = %79
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %115, %118
  br label %120

120:                                              ; preds = %114, %108
  %121 = phi i1 [ true, %108 ], [ %119, %114 ]
  br i1 %121, label %72, label %122

122:                                              ; preds = %120
  store i32 0, i32* %18, align 4
  br label %123

123:                                              ; preds = %148, %122
  %124 = load i32, i32* %18, align 4
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %151

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64**, i64*** @dia1, align 8
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64*, i64** %129, i64 %131
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %128, %135
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64**, i64*** @dia1, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64*, i64** %139, i64 %141
  %143 = load i64*, i64** %142, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %138, %145
  %147 = call i32 @COST_P_MV(i64 %136, i64 %146)
  br label %148

148:                                              ; preds = %126
  %149 = load i32, i32* %18, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %18, align 4
  br label %123

151:                                              ; preds = %123
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %69
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i32 @FFMIN(i64, i32) #1

declare dso_local i32 @COST_P_MV(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
