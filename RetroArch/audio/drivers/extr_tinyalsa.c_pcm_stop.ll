; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_stop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_tinyalsa.c_pcm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm = type { i64, i64, i32 }

@SNDRV_PCM_IOCTL_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"[TINYALSA]: Cannot stop channel.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm*)* @pcm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_stop(%struct.pcm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcm*, align 8
  store %struct.pcm* %0, %struct.pcm** %3, align 8
  %4 = load %struct.pcm*, %struct.pcm** %3, align 8
  %5 = getelementptr inbounds %struct.pcm, %struct.pcm* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SNDRV_PCM_IOCTL_DROP, align 4
  %8 = call i64 @ioctl(i32 %6, i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.pcm*, %struct.pcm** %3, align 8
  %14 = getelementptr inbounds %struct.pcm, %struct.pcm* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.pcm*, %struct.pcm** %3, align 8
  %16 = getelementptr inbounds %struct.pcm, %struct.pcm* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @ioctl(i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
