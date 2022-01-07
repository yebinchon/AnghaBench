; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-sound.c_FCEUD_SoundVolumeAdjust.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-sound.c_FCEUD_SoundVolumeAdjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@soundvolume = common dso_local global i32 0, align 4
@mute = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Sound volume %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FCEUD_SoundVolumeAdjust(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %19 [
    i32 -1, label %4
    i32 0, label %11
    i32 1, label %12
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @soundvolume, align 4
  %6 = sub nsw i32 %5, 10
  store i32 %6, i32* @soundvolume, align 4
  %7 = load i32, i32* @soundvolume, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32 0, i32* @soundvolume, align 4
  br label %10

10:                                               ; preds = %9, %4
  br label %19

11:                                               ; preds = %1
  store i32 100, i32* @soundvolume, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @soundvolume, align 4
  %14 = add nsw i32 %13, 10
  store i32 %14, i32* @soundvolume, align 4
  %15 = load i32, i32* @soundvolume, align 4
  %16 = icmp sgt i32 %15, 150
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 150, i32* @soundvolume, align 4
  br label %18

18:                                               ; preds = %17, %12
  br label %19

19:                                               ; preds = %1, %18, %11, %10
  store i64 0, i64* @mute, align 8
  %20 = load i32, i32* @soundvolume, align 4
  %21 = call i32 @FCEUI_SetSoundVolume(i32 %20)
  %22 = load i32, i32* @soundvolume, align 4
  %23 = call i32 @FCEU_DispMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local i32 @FCEUI_SetSoundVolume(i32) #1

declare dso_local i32 @FCEU_DispMessage(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
