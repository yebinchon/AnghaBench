; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_get_pcm_codec_id.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_get_pcm_codec_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CODEC_ID_NONE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_F32BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_F32LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_F64BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_F64LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S8 = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S24BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S24LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S32BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S32LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S64BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S64LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U16BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U16LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U24BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U24LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U32BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U32LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_get_pcm_codec_id(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 64
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %4
  %16 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  store i32 %16, i32* %5, align 4
  br label %128

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %40 [
    i32 32, label %22
    i32 64, label %31
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @AV_CODEC_ID_PCM_F32BE, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @AV_CODEC_ID_PCM_F32LE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %5, align 4
  br label %128

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @AV_CODEC_ID_PCM_F64BE, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @AV_CODEC_ID_PCM_F64LE, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %5, align 4
  br label %128

40:                                               ; preds = %20
  %41 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  store i32 %41, i32* %5, align 4
  br label %128

42:                                               ; preds = %17
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 7
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 3
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = shl i32 1, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %95

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  switch i32 %54, label %93 [
    i32 1, label %55
    i32 2, label %57
    i32 3, label %66
    i32 4, label %75
    i32 8, label %84
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* @AV_CODEC_ID_PCM_S8, align 4
  store i32 %56, i32* %5, align 4
  br label %128

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @AV_CODEC_ID_PCM_S16BE, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %5, align 4
  br label %128

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @AV_CODEC_ID_PCM_S24BE, align 4
  br label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @AV_CODEC_ID_PCM_S24LE, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %5, align 4
  br label %128

75:                                               ; preds = %53
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @AV_CODEC_ID_PCM_S32BE, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @AV_CODEC_ID_PCM_S32LE, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %5, align 4
  br label %128

84:                                               ; preds = %53
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @AV_CODEC_ID_PCM_S64BE, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @AV_CODEC_ID_PCM_S64LE, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %5, align 4
  br label %128

93:                                               ; preds = %53
  %94 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  store i32 %94, i32* %5, align 4
  br label %128

95:                                               ; preds = %42
  %96 = load i32, i32* %6, align 4
  switch i32 %96, label %126 [
    i32 1, label %97
    i32 2, label %99
    i32 3, label %108
    i32 4, label %117
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  store i32 %98, i32* %5, align 4
  br label %128

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @AV_CODEC_ID_PCM_U16BE, align 4
  br label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @AV_CODEC_ID_PCM_U16LE, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %5, align 4
  br label %128

108:                                              ; preds = %95
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* @AV_CODEC_ID_PCM_U24BE, align 4
  br label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @AV_CODEC_ID_PCM_U24LE, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  store i32 %116, i32* %5, align 4
  br label %128

117:                                              ; preds = %95
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @AV_CODEC_ID_PCM_U32BE, align 4
  br label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @AV_CODEC_ID_PCM_U32LE, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  store i32 %125, i32* %5, align 4
  br label %128

126:                                              ; preds = %95
  %127 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %124, %115, %106, %97, %93, %91, %82, %73, %64, %55, %40, %38, %29, %15
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
