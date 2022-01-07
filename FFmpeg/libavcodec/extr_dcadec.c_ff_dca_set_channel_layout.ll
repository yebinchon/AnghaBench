; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadec.c_ff_dca_set_channel_layout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcadec.c_ff_dca_set_channel_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ff_dca_set_channel_layout.dca2wav_norm = internal constant [28 x i32] [i32 2, i32 0, i32 1, i32 9, i32 10, i32 3, i32 8, i32 4, i32 5, i32 9, i32 10, i32 6, i32 7, i32 12, i32 13, i32 14, i32 3, i32 6, i32 7, i32 11, i32 12, i32 14, i32 16, i32 15, i32 17, i32 8, i32 4, i32 5], align 16
@ff_dca_set_channel_layout.dca2wav_wide = internal constant [28 x i32] [i32 2, i32 0, i32 1, i32 4, i32 5, i32 3, i32 8, i32 4, i32 5, i32 9, i32 10, i32 6, i32 7, i32 12, i32 13, i32 14, i32 3, i32 9, i32 10, i32 11, i32 12, i32 14, i32 16, i32 15, i32 17, i32 8, i32 4, i32 5], align 16
@AV_CH_LAYOUT_NATIVE = common dso_local global i32 0, align 4
@DCA_SPEAKER_COUNT = common dso_local global i32 0, align 4
@DCA_SPEAKER_LAYOUT_7POINT0_WIDE = common dso_local global i32 0, align 4
@DCA_SPEAKER_LAYOUT_7POINT1_WIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dca_set_channel_layout(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [18 x i32], align 16
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AV_CH_LAYOUT_NATIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @DCA_SPEAKER_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %20

41:                                               ; preds = %20
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %118

45:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DCA_SPEAKER_LAYOUT_7POINT0_WIDE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @DCA_SPEAKER_LAYOUT_7POINT1_WIDE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45
  store i32* getelementptr inbounds ([28 x i32], [28 x i32]* @ff_dca_set_channel_layout.dca2wav_wide, i64 0, i64 0), i32** %12, align 8
  br label %55

54:                                               ; preds = %49
  store i32* getelementptr inbounds ([28 x i32], [28 x i32]* @ff_dca_set_channel_layout.dca2wav_norm, i64 0, i64 0), i32** %12, align 8
  br label %55

55:                                               ; preds = %54, %53
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %87, %55
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 28
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  %82 = shl i32 1, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %76, %65
  br label %86

86:                                               ; preds = %85, %59
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %56

90:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %111, %90
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 18
  br i1 %93, label %94, label %114

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %8, align 4
  %97 = shl i32 1, %96
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [18 x i32], [18 x i32]* %11, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 %104, i32* %109, align 4
  br label %110

110:                                              ; preds = %100, %94
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %91

114:                                              ; preds = %91
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %114, %41
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %9, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
