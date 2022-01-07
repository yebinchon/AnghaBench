; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vc1dec.c_vc1_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vc1dec.c_vc1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@PROFILE_ADVANCED = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @vc1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %112, %1
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 5
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %115

21:                                               ; preds = %14
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @AV_RB32(i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, -32
  %31 = icmp eq i32 %30, 256
  br i1 %31, label %32, label %111

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 287
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %110 [
    i32 129, label %38
    i32 132, label %89
    i32 130, label %100
    i32 131, label %100
    i32 128, label %100
  ]

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 192
  %47 = ashr i32 %46, 6
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @PROFILE_ADVANCED, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %112

54:                                               ; preds = %38
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 56
  %63 = ashr i32 %62, 3
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp sge i32 %64, 5
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %112

69:                                               ; preds = %54
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 6
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %112

84:                                               ; preds = %69
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 6
  store i32 %88, i32* %8, align 4
  br label %110

89:                                               ; preds = %32
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %112

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %8, align 4
  br label %110

100:                                              ; preds = %32, %32, %32
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %106, %103, %100
  br label %110

110:                                              ; preds = %32, %109, %95, %84
  br label %111

111:                                              ; preds = %110, %21
  br label %112

112:                                              ; preds = %111, %92, %81, %66, %51
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %14

115:                                              ; preds = %14
  %116 = load i32, i32* %7, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = ashr i32 %119, 1
  %121 = load i32, i32* %6, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %125 = sdiv i32 %124, 2
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %2, align 4
  br label %134

127:                                              ; preds = %118, %115
  %128 = load i32, i32* %7, align 4
  %129 = icmp sge i32 %128, 1
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %132 = sdiv i32 %131, 4
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %130, %123
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @AV_RB32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
