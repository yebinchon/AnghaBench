; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_GetSoundtime.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_GetSoundtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@S_GetSoundtime.buffers = internal global i32 0, align 4
@S_GetSoundtime.oldsamplepos = internal global i32 0, align 4
@dma = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@s_paintedtime = common dso_local global i32 0, align 4
@s_soundtime = common dso_local global i32 0, align 4
@s_mixPreStep = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_GetSoundtime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dma, i32 0, i32 0), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dma, i32 0, i32 1), align 4
  %5 = sdiv i32 %3, %4
  store i32 %5, i32* %2, align 4
  %6 = call i32 (...) @SNDDMA_GetDMAPos()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @S_GetSoundtime.oldsamplepos, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load i32, i32* @S_GetSoundtime.buffers, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @S_GetSoundtime.buffers, align 4
  %13 = load i32, i32* @s_paintedtime, align 4
  %14 = icmp sgt i32 %13, 1073741824
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  store i32 0, i32* @S_GetSoundtime.buffers, align 4
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* @s_paintedtime, align 4
  %17 = call i32 (...) @S_StopAllSounds()
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i32, i32* %1, align 4
  store i32 %20, i32* @S_GetSoundtime.oldsamplepos, align 4
  %21 = load i32, i32* @S_GetSoundtime.buffers, align 4
  %22 = load i32, i32* %2, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dma, i32 0, i32 1), align 4
  %26 = sdiv i32 %24, %25
  %27 = add nsw i32 %23, %26
  store i32 %27, i32* @s_soundtime, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dma, i32 0, i32 2), align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load i32, i32* @s_soundtime, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_mixPreStep, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dma, i32 0, i32 3), align 4
  %36 = mul nsw i32 %34, %35
  %37 = add nsw i32 %31, %36
  store i32 %37, i32* @s_paintedtime, align 4
  br label %42

38:                                               ; preds = %19
  %39 = load i32, i32* @s_soundtime, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dma, i32 0, i32 2), align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* @s_paintedtime, align 4
  br label %42

42:                                               ; preds = %38, %30
  ret void
}

declare dso_local i32 @SNDDMA_GetDMAPos(...) #1

declare dso_local i32 @S_StopAllSounds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
