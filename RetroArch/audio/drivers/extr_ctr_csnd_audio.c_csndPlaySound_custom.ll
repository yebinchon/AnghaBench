; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_ctr_csnd_audio.c_csndPlaySound_custom.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_ctr_csnd_audio.c_csndPlaySound_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@csndChannels = common dso_local global i32 0, align 4
@SOUND_ONE_SHOT = common dso_local global i32 0, align 4
@CSND_ENCODING_PSG = common dso_local global i32 0, align 4
@CSND_ENCODING_ADPCM = common dso_local global i32 0, align 4
@SOUND_ENABLE = common dso_local global i32 0, align 4
@CTR_CSND_TICKS_PER_SAMPLE = common dso_local global i32 0, align 4
@CSND_LOOPMODE_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csndPlaySound_custom(i32 %0, i32 %1, float %2, float %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  %24 = ashr i32 %23, 12
  %25 = and i32 %24, 3
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %10, align 4
  %27 = ashr i32 %26, 10
  %28 = and i32 %27, 3
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* @csndChannels, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %7
  store i32 1, i32* %8, align 4
  br label %119

35:                                               ; preds = %7
  %36 = load i32, i32* %19, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @SOUND_ONE_SHOT, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* @CSND_ENCODING_PSG, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i8*, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @osConvertVirtToPhys(i8* %50)
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i8*, i8** %14, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @osConvertVirtToPhys(i8* %56)
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i8*, i8** %13, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* @CSND_ENCODING_ADPCM, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load i8*, i8** %13, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = getelementptr inbounds i32, i32* %67, i64 -2
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %20, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 -2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %21, align 4
  %77 = call i32 @CSND_SetAdpcmState(i32 %74, i32 0, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %65, %61, %58
  br label %79

79:                                               ; preds = %78, %42
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 65504
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* @SOUND_ENABLE, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @SOUND_CHANNEL(i32 %83)
  %85 = or i32 %82, %84
  %86 = load i32, i32* @CTR_CSND_TICKS_PER_SAMPLE, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 %85, %87
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load float, float* %11, align 4
  %92 = load float, float* %12, align 4
  %93 = call i32 @CSND_VOL(float %91, float %92)
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %22, align 4
  %100 = call i32 @CSND_SetChnRegs(i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* @CSND_LOOPMODE_NORMAL, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %79
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @CSND_SetBlock(i32 %114, i32 1, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %108, %104, %79
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %34
  %120 = load i32, i32* %8, align 4
  ret i32 %120
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @osConvertVirtToPhys(i8*) #1

declare dso_local i32 @CSND_SetAdpcmState(i32, i32, i32, i32) #1

declare dso_local i32 @SOUND_CHANNEL(i32) #1

declare dso_local i32 @CSND_VOL(float, float) #1

declare dso_local i32 @CSND_SetChnRegs(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CSND_SetBlock(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
