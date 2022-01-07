; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_mixdown_has_remix_support.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_mixdown_has_remix_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CH_FRONT_LEFT_OF_CENTER = common dso_local global i32 0, align 4
@AV_CH_FRONT_RIGHT_OF_CENTER = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_7POINT0 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_6POINT0 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_HEXAGONAL = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_2_1 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_2_2 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_QUAD = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_SURROUND = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO_DOWNMIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_mixdown_has_remix_support(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %126

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %125 [
    i32 137, label %11
    i32 135, label %30
    i32 136, label %37
    i32 138, label %58
    i32 134, label %85
    i32 133, label %85
    i32 128, label %115
    i32 132, label %120
    i32 129, label %120
    i32 131, label %124
    i32 130, label %124
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @AV_CH_FRONT_LEFT_OF_CENTER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @AV_CH_FRONT_RIGHT_OF_CENTER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %21, %16, %11
  %28 = phi i1 [ false, %16 ], [ false, %11 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %126

30:                                               ; preds = %9
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @AV_CH_LAYOUT_7POINT0, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @AV_CH_LAYOUT_7POINT0, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %126

37:                                               ; preds = %9
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @AV_CH_LAYOUT_7POINT0, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @AV_CH_LAYOUT_7POINT0, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @AV_CH_LAYOUT_6POINT0, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @AV_CH_LAYOUT_6POINT0, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @AV_CH_LAYOUT_HEXAGONAL, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @AV_CH_LAYOUT_HEXAGONAL, align 4
  %54 = icmp eq i32 %52, %53
  br label %55

55:                                               ; preds = %49, %43, %37
  %56 = phi i1 [ true, %43 ], [ true, %37 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %126

58:                                               ; preds = %9
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @AV_CH_LAYOUT_2_1, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @AV_CH_LAYOUT_2_1, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %82, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @AV_CH_LAYOUT_2_2, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @AV_CH_LAYOUT_2_2, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @AV_CH_LAYOUT_QUAD, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @AV_CH_LAYOUT_QUAD, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @AV_CH_LAYOUT_SURROUND, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @AV_CH_LAYOUT_SURROUND, align 4
  %81 = icmp eq i32 %79, %80
  br label %82

82:                                               ; preds = %76, %70, %64, %58
  %83 = phi i1 [ true, %70 ], [ true, %64 ], [ true, %58 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %3, align 4
  br label %126

85:                                               ; preds = %9, %9
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @AV_CH_LAYOUT_2_1, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @AV_CH_LAYOUT_2_1, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %112, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @AV_CH_LAYOUT_2_2, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @AV_CH_LAYOUT_2_2, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %112, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @AV_CH_LAYOUT_QUAD, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @AV_CH_LAYOUT_QUAD, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @AV_CH_LAYOUT_STEREO_DOWNMIX, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %4, align 4
  %109 = icmp eq i32 %108, 134
  br label %110

110:                                              ; preds = %107, %103
  %111 = phi i1 [ false, %103 ], [ %109, %107 ]
  br label %112

112:                                              ; preds = %110, %97, %91, %85
  %113 = phi i1 [ true, %97 ], [ true, %91 ], [ true, %85 ], [ %111, %110 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %3, align 4
  br label %126

115:                                              ; preds = %9
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @av_get_channel_layout_nb_channels(i32 %116)
  %118 = icmp sgt i32 %117, 1
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %3, align 4
  br label %126

120:                                              ; preds = %9, %9
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %3, align 4
  br label %126

124:                                              ; preds = %9, %9
  store i32 1, i32* %3, align 4
  br label %126

125:                                              ; preds = %9
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %124, %120, %115, %112, %82, %55, %30, %27, %8
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @av_get_channel_layout_nb_channels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
