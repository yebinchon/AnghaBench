; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_param_get_int.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_param_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_interval = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, i32)* @param_get_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_get_int(%struct.snd_pcm_hw_params* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_interval*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @param_is_interval(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.snd_interval* @param_to_interval(%struct.snd_pcm_hw_params* %11, i32 %12)
  store %struct.snd_interval* %13, %struct.snd_interval** %6, align 8
  %14 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %15 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %20 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @param_is_interval(i32) #1

declare dso_local %struct.snd_interval* @param_to_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
