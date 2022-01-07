; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_pemu_sound_stop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_pemu_sound_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@samples_done = common dso_local global i64 0, align 8
@sndBuffer = common dso_local global i64 0, align 8
@samples_block = common dso_local global i32 0, align 4
@samples_made = common dso_local global i32 0, align 4
@sound_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pemu_sound_stop() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @samples_done, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i64, i64* @sndBuffer, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* @samples_block, align 4
  %9 = mul nsw i32 %8, 4
  %10 = sdiv i32 %9, 4
  %11 = call i32 @memset32(i32* %7, i32 0, i32 %10)
  %12 = load i32, i32* @samples_block, align 4
  %13 = mul nsw i32 %12, 3
  store i32 %13, i32* @samples_made, align 4
  %14 = load i32, i32* @sound_sem, align 4
  %15 = call i32 @sceKernelSignalSema(i32 %14, i32 1)
  br label %16

16:                                               ; preds = %4, %0
  %17 = call i32 @sceKernelDelayThread(i32 100000)
  store i64 0, i64* @samples_done, align 8
  store i32 0, i32* @samples_made, align 4
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %28, %16
  %19 = call i64 (...) @sceAudioOutput2GetRestSample()
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 16
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = call i32 @psp_msleep(i32 100)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %18

31:                                               ; preds = %24
  %32 = call i32 (...) @sceAudio_5C37C0AE()
  ret void
}

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @sceKernelSignalSema(i32, i32) #1

declare dso_local i32 @sceKernelDelayThread(i32) #1

declare dso_local i64 @sceAudioOutput2GetRestSample(...) #1

declare dso_local i32 @psp_msleep(i32) #1

declare dso_local i32 @sceAudio_5C37C0AE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
