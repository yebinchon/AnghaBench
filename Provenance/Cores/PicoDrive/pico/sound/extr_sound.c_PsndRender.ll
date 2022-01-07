; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_PsndRender.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sound.c_PsndRender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64, i32* }

@PsndBuffer = common dso_local global i32* null, align 8
@PicoOpt = common dso_local global i32 0, align 4
@sound = common dso_local global i32 0, align 4
@PsndLen_exc_add = common dso_local global i64 0, align 8
@PsndLen_exc_cnt = common dso_local global i32 0, align 4
@POPT_EN_PSG = common dso_local global i32 0, align 4
@PsndOut = common dso_local global i64 0, align 8
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_PICO = common dso_local global i32 0, align 4
@POPT_EN_FM = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@POPT_EN_MCD_CDDA = common dso_local global i32 0, align 4
@Pico_mcd = common dso_local global %struct.TYPE_2__* null, align 8
@CT_MP3 = common dso_local global i64 0, align 8
@PAHW_32X = common dso_local global i32 0, align 4
@POPT_EN_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @PsndRender to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PsndRender(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** @PsndBuffer, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* @PicoOpt, align 4
  %14 = and i32 %13, 8
  %15 = ashr i32 %14, 3
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @sound, align 4
  %20 = call i32 @pprof_start(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i64, i64* @PsndLen_exc_add, align 8
  %25 = load i32, i32* @PsndLen_exc_cnt, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @PsndLen_exc_cnt, align 4
  %29 = load i32, i32* @PsndLen_exc_cnt, align 4
  %30 = icmp sge i32 %29, 65536
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, i32* @PsndLen_exc_cnt, align 4
  %33 = sub nsw i32 %32, 65536
  store i32 %33, i32* @PsndLen_exc_cnt, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %23
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* @PicoOpt, align 4
  %39 = load i32, i32* @POPT_EN_PSG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i64, i64* @PsndOut, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @SN76496Update(i64 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %37
  %51 = load i32, i32* @PicoAHW, align 4
  %52 = load i32, i32* @PAHW_PICO, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i64, i64* @PsndOut, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @PicoPicoPCMUpdate(i64 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %3, align 4
  br label %156

64:                                               ; preds = %50
  %65 = load i32, i32* @PicoOpt, align 4
  %66 = load i32, i32* @POPT_EN_FM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @YM2612UpdateOne(i32* %70, i32 %71, i32 %72, i32 1)
  store i32 %73, i32* %6, align 4
  br label %80

74:                                               ; preds = %64
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 %76, %77
  %79 = call i32 @memset32(i32* %75, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %74, %69
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @PicoAHW, align 4
  %83 = load i32, i32* @PAHW_MCD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @pcd_pcm_update(i32* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %80
  %92 = load i32, i32* @PicoAHW, align 4
  %93 = load i32, i32* @PAHW_MCD, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %130

96:                                               ; preds = %91
  %97 = load i32, i32* @PicoOpt, align 4
  %98 = load i32, i32* @POPT_EN_MCD_CDDA, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %96
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %130

106:                                              ; preds = %101
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 54
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %130, label %114

114:                                              ; preds = %106
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico_mcd, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @CT_MP3, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @mp3_update(i32* %121, i32 %122, i32 %123)
  br label %129

125:                                              ; preds = %114
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @cdda_raw_update(i32* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %120
  br label %130

130:                                              ; preds = %129, %106, %101, %96, %91
  %131 = load i32, i32* @PicoAHW, align 4
  %132 = load i32, i32* @PAHW_32X, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load i32, i32* @PicoOpt, align 4
  %137 = load i32, i32* @POPT_EN_PWM, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @p32x_pwm_update(i32* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %135, %130
  %146 = load i64, i64* @PsndOut, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %146, %148
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @PsndMix_32_to_16l(i64 %149, i32* %150, i32 %151)
  %153 = load i32, i32* @sound, align 4
  %154 = call i32 @pprof_end(i32 %153)
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %145, %55
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @pprof_start(i32) #1

declare dso_local i32 @SN76496Update(i64, i32, i32) #1

declare dso_local i32 @PicoPicoPCMUpdate(i64, i32, i32) #1

declare dso_local i32 @YM2612UpdateOne(i32*, i32, i32, i32) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @pcd_pcm_update(i32*, i32, i32) #1

declare dso_local i32 @mp3_update(i32*, i32, i32) #1

declare dso_local i32 @cdda_raw_update(i32*, i32) #1

declare dso_local i32 @p32x_pwm_update(i32*, i32, i32) #1

declare dso_local i32 @PsndMix_32_to_16l(i64, i32*, i32) #1

declare dso_local i32 @pprof_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
