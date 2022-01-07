; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_get_sad_ob.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_get_sad_ob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64*, i64* }

@COST_PRED_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32, i32, i32, i32)* @get_sad_ob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_sad_ob(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 9
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %11, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 8
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %12, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %37, 2
  %39 = add nsw i32 %34, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %45, 2
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %15, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %53, 2
  %55 = add nsw i32 %50, %54
  store i32 %55, i32* %16, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %61, 2
  %63 = sub nsw i32 %58, %62
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %19, align 4
  store i64 0, i64* %22, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @av_clip(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @av_clip(i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @av_clip(i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @av_clip(i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 0, %88
  %90 = sdiv i32 %89, 2
  store i32 %90, i32* %21, align 4
  br label %91

91:                                               ; preds = %149, %5
  %92 = load i32, i32* %21, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 %95, 3
  %97 = sdiv i32 %96, 2
  %98 = icmp slt i32 %92, %97
  br i1 %98, label %99, label %152

99:                                               ; preds = %91
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 0, %102
  %104 = sdiv i32 %103, 2
  store i32 %104, i32* %20, align 4
  br label %105

105:                                              ; preds = %145, %99
  %106 = load i32, i32* %20, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %109, 3
  %111 = sdiv i32 %110, 2
  %112 = icmp slt i32 %106, %111
  br i1 %112, label %113, label %148

113:                                              ; preds = %105
  %114 = load i64*, i64** %11, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %20, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %13, align 4
  %122 = mul nsw i32 %120, %121
  %123 = add nsw i32 %117, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %114, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %12, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %20, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %21, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %13, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 %130, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %127, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %126, %139
  %141 = call i32 @FFABS(i64 %140)
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %22, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %22, align 8
  br label %145

145:                                              ; preds = %113
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %20, align 4
  br label %105

148:                                              ; preds = %105
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %21, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %21, align 4
  br label %91

152:                                              ; preds = %91
  %153 = load i64, i64* %22, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %155, %158
  %160 = call i32 @FFABS(i64 %159)
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %162, %165
  %167 = call i32 @FFABS(i64 %166)
  %168 = add nsw i32 %160, %167
  %169 = load i32, i32* @COST_PRED_SCALE, align 4
  %170 = mul nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %153, %171
  ret i64 %172
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @FFABS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
