; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_voicebox.c_VOICEBOX_SEROUTPutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_voicebox.c_VOICEBOX_SEROUTPutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOICEBOX_enabled = common dso_local global i32 0, align 4
@VOICEBOX_ii = common dso_local global i32 0, align 4
@PIA_PACTL = common dso_local global i32 0, align 4
@POKEY_SKCTL = common dso_local global i32 0, align 4
@POKEY_AUDCTL = common dso_local global i32* null, align 8
@POKEY_AUDF = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VOICEBOX_SEROUTPutByte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @VOICEBOX_enabled, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @VOICEBOX_ii, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %1
  br label %44

11:                                               ; preds = %7
  %12 = load i32, i32* @PIA_PACTL, align 4
  %13 = and i32 %12, 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %44

16:                                               ; preds = %11
  %17 = load i32, i32* @POKEY_SKCTL, align 4
  %18 = and i32 %17, 112
  %19 = icmp eq i32 %18, 96
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 7, %33
  %35 = shl i32 %32, %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @VOTRAXSND_PutByte(i32 %42)
  br label %44

44:                                               ; preds = %10, %15, %41, %16
  ret void
}

declare dso_local i32 @VOTRAXSND_PutByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
