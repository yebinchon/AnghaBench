; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truespeech.c_truespeech_place_pulses.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truespeech.c_truespeech_place_pulses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@ts_pulse_scales = common dso_local global i32* null, align 8
@ts_pulse_values = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32)* @truespeech_place_pulses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truespeech_place_pulses(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [7 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @memset(i32* %14, i32 0, i32 240)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %54, %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 7
  br i1 %18, label %19, label %57

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 3
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 2
  store i32 %35, i32* %33, align 4
  %36 = load i32*, i32** @ts_pulse_scales, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %36, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 6, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 %52
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %19
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %16

57:                                               ; preds = %16
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 15
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** @ts_pulse_values, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 30
  store i32* %67, i32** %11, align 8
  %68 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  store i32* %68, i32** %12, align 8
  store i32 0, i32* %8, align 4
  store i32 3, i32* %9, align 4
  br label %69

69:                                               ; preds = %101, %57
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 30
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %73, 0
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i1 [ false, %69 ], [ %74, %72 ]
  br i1 %76, label %77, label %104

77:                                               ; preds = %75
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %11, align 8
  %80 = load i32, i32* %78, align 4
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %13, align 4
  br label %100

88:                                               ; preds = %77
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %12, align 8
  %91 = load i32, i32* %89, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 30
  store i32* %97, i32** %11, align 8
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %88, %84
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %69

104:                                              ; preds = %75
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 32767
  store i32 %112, i32* %13, align 4
  %113 = load i32*, i32** @ts_pulse_values, align 8
  store i32* %113, i32** %11, align 8
  store i32 30, i32* %8, align 4
  store i32 4, i32* %9, align 4
  br label %114

114:                                              ; preds = %146, %104
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 60
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = icmp sgt i32 %118, 0
  br label %120

120:                                              ; preds = %117, %114
  %121 = phi i1 [ false, %114 ], [ %119, %117 ]
  br i1 %121, label %122, label %149

122:                                              ; preds = %120
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %11, align 8
  %125 = load i32, i32* %123, align 4
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %13, align 4
  br label %145

133:                                              ; preds = %122
  %134 = load i32*, i32** %12, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %12, align 8
  %136 = load i32, i32* %134, align 4
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 30
  store i32* %142, i32** %11, align 8
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %133, %129
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %114

149:                                              ; preds = %120
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
