; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_param_set_int.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_param_set_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_interval = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_hw_params*, i32, i32)* @param_set_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @param_set_int(%struct.snd_pcm_hw_params* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_interval*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @param_is_interval(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.snd_interval* @param_to_interval(%struct.snd_pcm_hw_params* %12, i32 %13)
  store %struct.snd_interval* %14, %struct.snd_interval** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %17 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %20 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %21, i32 0, i32 2
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %11, %3
  ret void
}

declare dso_local i64 @param_is_interval(i32) #1

declare dso_local %struct.snd_interval* @param_to_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
