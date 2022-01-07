; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_snddx.c_SNDDXGetAudioSpace.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_snddx.c_SNDDXGetAudioSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lpDSB2 = common dso_local global i32 0, align 4
@DS_OK = common dso_local global i64 0, align 8
@soundoffset = common dso_local global i64 0, align 8
@soundbufsize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SNDDXGetAudioSpace() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @lpDSB2, align 4
  %6 = call i64 @IDirectSoundBuffer8_GetCurrentPosition(i32 %5, i64* %2, i64* %3)
  %7 = load i64, i64* @DS_OK, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %30

10:                                               ; preds = %0
  %11 = load i64, i64* @soundoffset, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i64, i64* @soundbufsize, align 8
  %16 = load i64, i64* @soundoffset, align 8
  %17 = sub nsw i64 %15, %16
  %18 = load i64, i64* %2, align 8
  %19 = add nsw i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %10
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @soundoffset, align 8
  %24 = sub nsw i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 2
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %26, %9
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i64 @IDirectSoundBuffer8_GetCurrentPosition(i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
