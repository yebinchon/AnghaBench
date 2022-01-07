; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_jpeg_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_jpeg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@TEM = common dso_local global i32 0, align 4
@JPG = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @jpeg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpeg_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  store i32 129, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @AV_RB16(i32* %11)
  %13 = icmp ne i32 %12, 65496
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @AV_RB32(i32* %15)
  %17 = icmp eq i32 %16, -2555913
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %124

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32* %21, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %106, %19
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 3
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %109

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 255
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %106

37:                                               ; preds = %29
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  switch i32 %44, label %92 [
    i32 129, label %45
    i32 136, label %46
    i32 135, label %46
    i32 134, label %46
    i32 133, label %46
    i32 132, label %46
    i32 131, label %46
    i32 130, label %46
    i32 128, label %60
    i32 137, label %77
    i32 138, label %82
    i32 155, label %82
    i32 154, label %82
    i32 147, label %82
    i32 146, label %82
    i32 145, label %82
    i32 144, label %82
    i32 143, label %82
    i32 142, label %82
    i32 141, label %82
    i32 140, label %82
    i32 153, label %82
    i32 152, label %82
    i32 151, label %82
    i32 150, label %82
    i32 149, label %82
    i32 148, label %82
    i32 139, label %82
  ]

45:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %124

46:                                               ; preds = %37, %37, %37, %37, %37, %37, %37
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = call i32 @AV_RB16(i32* %51)
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 129
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %124

59:                                               ; preds = %46
  store i32 136, i32* %6, align 4
  br label %105

60:                                               ; preds = %37
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = call i32 @AV_RB16(i32* %65)
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 136
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 128
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %124

76:                                               ; preds = %72, %60
  store i32 128, i32* %6, align 4
  br label %105

77:                                               ; preds = %37
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 128
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %124

81:                                               ; preds = %77
  store i32 137, i32* %6, align 4
  br label %105

82:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = call i32 @AV_RB16(i32* %87)
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %105

92:                                               ; preds = %37
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @TEM, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 136
  br i1 %98, label %103, label %99

99:                                               ; preds = %96, %92
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @JPG, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %96
  store i32 0, i32* %2, align 4
  br label %124

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %82, %81, %76, %59
  br label %106

106:                                              ; preds = %105, %36
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %22

109:                                              ; preds = %22
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 137
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %2, align 4
  br label %124

115:                                              ; preds = %109
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 %116, 128
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %120 = sdiv i32 %119, 2
  store i32 %120, i32* %2, align 4
  br label %124

121:                                              ; preds = %115
  %122 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %123 = sdiv i32 %122, 8
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %121, %118, %112, %103, %80, %75, %58, %45, %18
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @AV_RB32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
