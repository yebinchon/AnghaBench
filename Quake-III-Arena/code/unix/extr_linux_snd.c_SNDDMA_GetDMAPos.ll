; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_snd.c_SNDDMA_GetDMAPos.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_snd.c_SNDDMA_GetDMAPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.count_info = type { i32 }

@snd_inited = common dso_local global i64 0, align 8
@audio_fd = common dso_local global i32 0, align 4
@SNDCTL_DSP_GETOPTR = common dso_local global i32 0, align 4
@snddevice = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Uh, sound dead.\0A\00", align 1
@dma = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SNDDMA_GetDMAPos() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.count_info, align 4
  %3 = load i64, i64* @snd_inited, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %25

6:                                                ; preds = %0
  %7 = load i32, i32* @audio_fd, align 4
  %8 = load i32, i32* @SNDCTL_DSP_GETOPTR, align 4
  %9 = call i32 @ioctl(i32 %7, i32 %8, %struct.count_info* %2)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @snddevice, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @perror(i32 %14)
  %16 = call i32 @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @audio_fd, align 4
  %18 = call i32 @close(i32 %17)
  store i64 0, i64* @snd_inited, align 8
  store i32 0, i32* %1, align 4
  br label %25

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.count_info, %struct.count_info* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dma, i32 0, i32 0), align 4
  %23 = sdiv i32 %22, 8
  %24 = sdiv i32 %21, %23
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %19, %11, %5
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @ioctl(i32, i32, %struct.count_info*) #1

declare dso_local i32 @perror(i32) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
