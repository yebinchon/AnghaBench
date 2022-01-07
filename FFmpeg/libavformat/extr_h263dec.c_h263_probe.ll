; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_h263dec.c_h263_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_h263dec.c_h263_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @h263_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h263_probe(%struct.TYPE_3__* %0) #0 {
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
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %115, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %118

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %23, %30
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, 281474909601792
  %35 = icmp eq i64 %34, 2147483648
  br i1 %35, label %36, label %95

36:                                               ; preds = %21
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 18
  %39 = and i32 %38, 255
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 10
  %42 = and i32 %41, 7
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 6
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 6
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %52, %49, %46, %36
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %115

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 7
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 512
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, 32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %115

79:                                               ; preds = %72, %68, %65
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 196608
  %82 = icmp eq i32 %81, 131072
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %92

89:                                               ; preds = %83, %79
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %13, align 4
  br label %114

95:                                               ; preds = %21
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = and i64 %97, 281472829227008
  %99 = icmp eq i64 %98, 2147483648
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = ashr i32 %101, 26
  %103 = and i32 %102, 31
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %112

110:                                              ; preds = %100
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %110, %107
  br label %113

113:                                              ; preds = %112, %95
  br label %114

114:                                              ; preds = %113, %92
  br label %115

115:                                              ; preds = %114, %76, %62
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %15

118:                                              ; preds = %15
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = mul nsw i32 2, %120
  %122 = load i32, i32* %8, align 4
  %123 = mul nsw i32 2, %122
  %124 = add nsw i32 %121, %123
  %125 = add nsw i32 %124, 3
  %126 = icmp sgt i32 %119, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  store i32 %128, i32* %2, align 4
  br label %139

129:                                              ; preds = %118
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %7, align 4
  %132 = mul nsw i32 2, %131
  %133 = icmp sgt i32 %130, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %136 = sdiv i32 %135, 2
  store i32 %136, i32* %2, align 4
  br label %139

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %134, %127
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
