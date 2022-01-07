; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_param_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_param_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32, i32, i64 }
%struct.snd_mask = type { i32* }
%struct.snd_interval = type { i32, i64 }

@SNDRV_PCM_HW_PARAM_FIRST_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_LAST_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FIRST_INTERVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_LAST_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_hw_params*)* @param_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @param_init(%struct.snd_pcm_hw_params* %0) #0 {
  %2 = alloca %struct.snd_pcm_hw_params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_mask*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %2, align 8
  %6 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %2, align 8
  %7 = call i32 @memset(%struct.snd_pcm_hw_params* %6, i32 0, i32 16)
  %8 = load i32, i32* @SNDRV_PCM_HW_PARAM_FIRST_MASK, align 4
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SNDRV_PCM_HW_PARAM_LAST_MASK, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.snd_mask* @param_to_mask(%struct.snd_pcm_hw_params* %14, i32 %15)
  store %struct.snd_mask* %16, %struct.snd_mask** %4, align 8
  %17 = load %struct.snd_mask*, %struct.snd_mask** %4, align 8
  %18 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 -1, i32* %20, align 4
  %21 = load %struct.snd_mask*, %struct.snd_mask** %4, align 8
  %22 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 -1, i32* %24, align 4
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load i32, i32* @SNDRV_PCM_HW_PARAM_FIRST_INTERVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %42, %28
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SNDRV_PCM_HW_PARAM_LAST_INTERVAL, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call %struct.snd_interval* @param_to_interval(%struct.snd_pcm_hw_params* %35, i32 %36)
  store %struct.snd_interval* %37, %struct.snd_interval** %5, align 8
  %38 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %39 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %41 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %2, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %2, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %2, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %50, i32 0, i32 1
  store i32 -1, i32* %51, align 4
  ret void
}

declare dso_local i32 @memset(%struct.snd_pcm_hw_params*, i32, i32) #1

declare dso_local %struct.snd_mask* @param_to_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_interval* @param_to_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
