; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_voicebox.c_VOICEBOX_SKCTLPutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_voicebox.c_VOICEBOX_SKCTLPutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOICEBOX_SKCTLPutByte.prev_byte = internal global i32 0, align 4
@VOICEBOX_SKCTLPutByte.prev_prev_byte = internal global i32 0, align 4
@VOICEBOX_SKCTLPutByte.voice_box_byte = internal global i32 0, align 4
@VOICEBOX_SKCTLPutByte.voice_box_bit = internal global i32 0, align 4
@VOICEBOX_enabled = common dso_local global i32 0, align 4
@VOICEBOX_ii = common dso_local global i64 0, align 8
@PIA_PACTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VOICEBOX_SKCTLPutByte(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @VOICEBOX_enabled, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* @VOICEBOX_ii, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %1
  br label %47

9:                                                ; preds = %5
  %10 = load i32, i32* @PIA_PACTL, align 4
  %11 = and i32 %10, 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %47

14:                                               ; preds = %9
  %15 = load i32, i32* @VOICEBOX_SKCTLPutByte.prev_prev_byte, align 4
  %16 = icmp eq i32 %15, 247
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load i32, i32* @VOICEBOX_SKCTLPutByte.prev_byte, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 255
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %44

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %2, align 4
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @VOICEBOX_SKCTLPutByte.voice_box_bit, align 4
  %31 = sub nsw i32 7, %30
  %32 = shl i32 1, %31
  %33 = load i32, i32* @VOICEBOX_SKCTLPutByte.voice_box_byte, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* @VOICEBOX_SKCTLPutByte.voice_box_byte, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* @VOICEBOX_SKCTLPutByte.voice_box_bit, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @VOICEBOX_SKCTLPutByte.voice_box_bit, align 4
  %38 = load i32, i32* @VOICEBOX_SKCTLPutByte.voice_box_bit, align 4
  %39 = icmp sgt i32 %38, 7
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  store i32 0, i32* @VOICEBOX_SKCTLPutByte.voice_box_bit, align 4
  %41 = load i32, i32* @VOICEBOX_SKCTLPutByte.voice_box_byte, align 4
  %42 = call i32 @VOTRAXSND_PutByte(i32 %41)
  store i32 0, i32* @VOICEBOX_SKCTLPutByte.voice_box_byte, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %23, %17, %14
  %45 = load i32, i32* @VOICEBOX_SKCTLPutByte.prev_byte, align 4
  store i32 %45, i32* @VOICEBOX_SKCTLPutByte.prev_prev_byte, align 4
  %46 = load i32, i32* %2, align 4
  store i32 %46, i32* @VOICEBOX_SKCTLPutByte.prev_byte, align 4
  br label %47

47:                                               ; preds = %44, %13, %8
  ret void
}

declare dso_local i32 @VOTRAXSND_PutByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
